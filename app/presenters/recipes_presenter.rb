# frozen_string_literal: true

class RecipesPresenter
  def self.list
    recipes.map do |recipe|
      RecipePresenter.new(id: recipe.id)
    end
  end

  def self.recipes
    ContentfulProxy.recipes
  end
end
