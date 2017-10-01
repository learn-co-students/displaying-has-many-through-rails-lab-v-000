class DoctorsController < ApplicationController
	def index
		@doctors = Doctor.all
		render :index
	end

	def show
		@doctor = Doctor.find(params[:id])
		render :show
	end
end
