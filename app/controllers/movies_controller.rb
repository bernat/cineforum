class MoviesController < ApplicationController

	#before_filter :authenticate_user!, :except => [:show, :index]

	def create
		@post = Post.find(params[:post_id])
		@movie = @post.movies.create(params[:movie])
		redirect_to post_path(@post)
	end
	
	def destroy
		@post = Post.find(params[:post_id])
		@movie = @post.movies.find(params[:id])
		@movie.destroy 
		redirect_to session_path(@post)  
	end 

end
