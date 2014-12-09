class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@comment = Comment.new({
			body: params[:comment][:body],
			user_id: current_user.id,
			recipe_id: params[:recipe_id]
			})
  		if @comment.save
  			redirect_to :back
  		else
        render 'new'
  	  end
	end

	def show
    @comment = Comment.find(params[:id])
	end

	def update
	end

	def destroy
	    @comment = Comment.find(params[:id])
	    @comment.destroy
	    # redirect_to recipes_path
	    redirect_to :back

	end
	

end
