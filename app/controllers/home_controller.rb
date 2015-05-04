class HomeController < ApplicationController
	def index
		@books=Book.all
	end

	def about
	end

	def write
		@name = params[:na]
		@message = params[:content]
		book = Book.new
		book.name = @name
		book.content = @message
		book.save
		# Book.create(name:params[:na], content:params[content])
		redirect_to '/'
	end

	def delete
		b = Book.find(params[:id])
		b.destroy
		redirect_to '/'
	end

	def modify
			@book = Book.find(params[:id])
	end

	def update
		b = Book.find(params[:id])
		b.name = params[:na]
		b.content = params[:content]
		b.save
		redirect_to '/'
	end
end
