# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RecipesPresenter do
  subject { described_class }

  context '.list' do
    before do
      recipe_double = double('recipe',
                             title: nil,
                             photo: nil,
                             tags: nil,
                             chef: nil,
                             description: nil,
                             id: 1)
      allow(ContentfulProxy).to receive(:recipes)
        .and_return([recipe_double, recipe_double])
      allow(ContentfulProxy).to receive(:entry)
        .with(id: 1)
        .and_return(recipe_double)
    end

    it 'returns an Array of RecipePresenters' do
      expect(subject.list).to all(be_kind_of(RecipePresenter))
    end
  end
end
