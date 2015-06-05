class BooksController < ApplicationController

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to "/home"
		else
			render :new
		end
	end



private

	def book_params
		params.require(:book).permit(:title, :genre, :year_published, :author)
	end

end