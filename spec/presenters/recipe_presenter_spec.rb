# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RecipePresenter do
  subject { described_class.new(id: 1) }

  before { allow(ContentfulProxy).to receive(:entry).and_return recipe_double }

  context 'when requesting a missing field' do
    let(:recipe_double) do
      double('recipe',
             title: nil,
             photo: nil,
             tags: nil,
             chef: nil,
             description: nil)
    end

    it 'title returns an empty string' do
      expect(subject.title).to eq ''
    end

    it 'image_url returns an empty string' do
      expect(subject.image_url).to eq ''
    end

    it 'tags returns an empty string' do
      expect(subject.tags).to eq ''
    end

    it 'chef returns an empty string' do
      expect(subject.chef).to eq ''
    end

    it 'description returns an empty string' do
      expect(subject.description).to eq ''
    end
  end

  context 'when fields are all present' do
    let(:photo_double) { double('photo', url: '//a.url.de/parameters') }
    let(:tag_1_double) { double('tag', name: 'awesome') }
    let(:tag_2_double) { double('tag', name: 'tasty') }
    let(:chef_double) { double('chef', name: 'Unknown') }
    let(:recipe_double) do
      double('recipe',
             title: 'The Title',
             photo: photo_double,
             tags: [tag_1_double, tag_2_double],
             chef: chef_double,
             description: 'Lorem ipsum dolor sit amet...')
    end

    it 'title returns the title' do
      expect(subject.title).to eq('The Title')
    end

    it 'tags is joined with ,' do
      expect(subject.tags).to eq('awesome, tasty')
    end

    it 'image_url is prefixed with https:' do
      expect(subject.image_url).to eq('https://a.url.de/parameters')
    end

    it 'chef returns the name' do
      expect(subject.chef).to eq('Unknown')
    end

    it 'description returns the description' do
      expect(subject.description).to eq('Lorem ipsum dolor sit amet...')
    end
  end
end
