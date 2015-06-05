class AuthorsController < ApplicationController

	def new
		@author = Author.new
	end

	def create
		@author = Author.new(author_params)
		if @author.save
			redirect_to "/home"
		else
			render :new
		end
	end

	def show
		@author = Author.find(params["id"])
		@books = @author.books
	end

private
	
	def author_params
		params.require(:author).permit(:name)
	end
	
end