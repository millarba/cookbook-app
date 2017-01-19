class RecipesController < ApplicationController

  def one_recipe
    @recipe = Recipe.last
  end

  def all_recipes
    @recipes = Recipe.all
  end

  def recipe_form

  end

  def recipe_success
    @recipe = Recipe.new(
                          title: params["title"],
                          chef: params["chef"],
                          ingredients: params["ingredients"],
                          directions: params["directions"]
                          )
    @recipe.save
  end
end