Rails.application.routes.draw do
  # get '/one_recipe_url' => 'recipes#one_recipe'
  # get '/all_recipes' => 'recipes#all_recipes'

  # get '/recipe_form' => 'recipes#recipe_form'
  # post '/recipe_form' => 'recipes#recipe_success'

  get '/' => 'recipes#index'
  get '/recipes' => 'recipes#index'

  get '/recipes/new' => 'recipes#new'
  post '/recipes' => 'recipes#create'

  get '/recipes/:id' => 'recipes#show'

  get '/recipes/:id/edit' => 'recipes#edit'
  patch '/recipes/:id' => 'recipes#update'

  delete '/recipes/:id' => 'recipes#destroy'
end