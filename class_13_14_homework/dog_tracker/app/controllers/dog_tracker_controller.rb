class DogTrackerController < ApplicationController

	def index
		@dogs = Dog.all
	end

	def show
		@dog = Dog.find(params["id"])
	end

	def new
		@new_dog = Dog.new()
	end

	def create
		@new_dog = Dog.new(params[:dog])
		if @new_dog.save
			redirect_to "/dogs"
		else
			render :new
		end
	end

end