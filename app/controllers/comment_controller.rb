class CommentController < ApplicationController
	def new
		c = Comment.new
		c.book_id = params[:book_id]
		c.message = params[:comment]
		c.save
		redirect_to '/'
	end
end
