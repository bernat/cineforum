class CommentsController < ApplicationController

	before_filter :authenticate, :only => :destroy 

	def create
		@session = Session.find(params[:session_id])
		@comment = @session.comments.create(params[:comment])
		redirect_to session_path(@session)
	end
	
	def destroy
		@session = Session.find(params[:session_id])
		@comment = @session.comments.find(params[:id])
		@comment.destroy 
		redirect_to session_path(@session)  
	end 
end