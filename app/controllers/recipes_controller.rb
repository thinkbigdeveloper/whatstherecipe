class RecipesController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy] 

	  def index
    @recipes = Recipe.search_for(params[:q])
    end



  	def new
  	@recipe = Recipe.new
  	end

  	def create
        # binding.pry
  	@recipe = Recipe.new(safe_recipe_params)
  		if @recipe.save
  			redirect_to recipes_path
  		else
        render 'new'
  	  end
    end
    
  	def show
    @recipe = Recipe.find(params[:id])
    @comments = @recipe.comments.all
    @comment = @recipe.comments.build
    @comment.recipe_id = params[:id]
    @user = current_user
      # binding.pry
  	end

    def edit
    @recipe = Recipe.find(params[:id])
    end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(title: params["recipe"]["title"], cuisine: params["recipe"]["cuisine"], dish_type: params["recipe"]["dish_type"], ingredients: params["recipe"]["ingredients"], cooking_steps: params["recipe"]["cooking_steps"], restaurant: params["recipe"]["restaurant"])
    redirect_to recipes_path 
  end

  def destroy
   @recipe = Recipe.find(params[:id])
    @recipe.destroy 
    redirect_to recipes_path
  end

private

    def safe_recipe_params
      params.require('recipe').permit(:title, :img_URL, :cuisine, :dish_type, :ingredients, :cooking_steps, :restaurant).merge(user_id: current_user.id)
    end

    def load_recipe
      @shirt = Recipe.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash.now[:notice] = "Invalid Recipe ID #{params[:id]}"
      redirect_to root_path
    end

end