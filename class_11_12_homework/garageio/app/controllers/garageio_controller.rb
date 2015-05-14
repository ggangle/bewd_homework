class GarageioController < ApplicationController

	def index
		@cars = Car.all
	end

end