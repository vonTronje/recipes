# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ContentfulProxy do
  subject { described_class }

  context 'calls the real API', call_contentful_api: true do
    before do
      ENV['CONTENTFUL_SPACE'] = 'kk2bw5ojx476'
      ENV['CONTENTFUL_ACCESS_TOKEN'] =
        '7ac531648a1b5e1dab6c18b0979f822a5aad0fe5f1109829b8a197eb2be4b84c'
    end

    it 'returns a list of all recipes' do
      recipes = subject.recipes
      expect(recipes).to all(be_kind_of Contentful::Entry)
      expect(recipes).to all(be_a_recipe)
    end

    it 'returns a specific entry by id' do
      expect(subject.entry(id: '4dT8tcb6ukGSIg2YyuGEOm'))
        .to be_kind_of Contentful::Entry
    end
  end
end
