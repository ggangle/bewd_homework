class GarageioController < ApplicationController

	def index
		
	end

	def show
		@cars = Car.all
	end

	def new
		@new_car = Car.new
	end

	def create
		@new_car = Car.new(params[:car])
		if @new_car.save
			redirect_to "/cars"
		else
			render :new
		end
	end

end