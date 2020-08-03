# frozen_string_literal: true
require 'kramdown'

class RecipePresenter
  def initialize(id:)
    @recipe = recipe(id)
  end

  def title
    return '' if @recipe.title.nil?

    @recipe.title
  end

  def image_url
    return '' if @recipe.photo.nil?

    "https:#{@recipe.photo.url}"
  end

  def tags
    return '' if @recipe.tags.nil?

    @recipe.tags.map(&:name).try(:join, ', ')
  end

  def chef
    return '' if @recipe.chef.nil?

    @recipe.chef.name
  end

  def description
    return '' if @recipe.description.nil?

    Kramdown::Document.new(@recipe.description).to_html.html_safe
  end

  def id
    @recipe.id
  end

  private

  def recipe(id)
    ContentfulProxy.entry(id: id)
  end
end
