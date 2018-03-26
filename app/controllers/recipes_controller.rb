class RecipesController < ApplicationController

  # def one_recipe
  #   @recipe = Recipe.last
  # end

  # def all_recipes
  #   @recipes = Recipe.all
  # end

  # def recipe_form

  # end

  # def recipe_success
  #   @recipe = Recipe.new(
  #                         title: params["title"],
  #                         chef: params["chef"],
  #                         ingredients: params["ingredients"],
  #                         directions: params["directions"],
  #                         )
  #   @recipe.save
  # end
  def index

    # if session[:count] == nil
    #   session[:count] = 0
    # end
    # session[:count] += 1
    # @visits = session[:count]

    @recipes = Recipe.all
  end

  def new

  end

  def create
    recipe = Recipe.new(
                          title: params[:title],
                          user_id: current_user.id,
                          prep_time: params[:prep_time],
                          ingredients: params[:ingredients],
                          directions: params[:directions]
                          )
    recipe.save
    flash[:success] = "Recipe Created Successfully."
    redirect_to "/recipes/#{recipe.id}"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.title = params[:title]
    @recipe.user_id = current_user.id
    @recipe.ingredients = params[:ingredients]
    @recipe.directions = params[:directions]

    @recipe.save
    flash[:info] = "Recipe Updated Successfully."
    redirect_to "/recipes/#{@recipe.id}"
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:warning] = "Recipe Removed Successfully."
    redirect_to "/recipes"
  end

end