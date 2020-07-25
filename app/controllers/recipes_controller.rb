# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = RecipesPresenter.list
  end

  def show
    @recipe = RecipePresenter.new(id: params[:id])
  end
end
