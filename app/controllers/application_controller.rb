class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  post '/recipes' do
    @recipe = Recipe.create(params)
    redirect to "/recipes/#{@recipe.id}"
  end

  get '/recipes/new' do
<<<<<<< HEAD
    erb :new
=======
      erb :new
>>>>>>> b1fa9e6e4670ee5977111a4e1ac9a5e3dee7ba4f
  end

  get '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    erb :show
  end

  get '/recipes/:id/edit' do
    @recipe = Recipe.find(params[:id])
    erb :edit
  end

  patch '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    @recipe.name = params[:name]
    @recipe.ingredients = params[:ingredients]
    @recipe.cook_time = params[:cook_time]
    @recipe.save
    redirect to "/recipes/#{@recipe.id}"
  end

<<<<<<< HEAD
  delete '/recipes/:id' do
=======
  delete '/recipes/:id/delete' do
>>>>>>> b1fa9e6e4670ee5977111a4e1ac9a5e3dee7ba4f
    recipe = Recipe.find(params[:id])
    recipe.delete
    redirect to '/recipes'
  end
  
  
  
  
end
