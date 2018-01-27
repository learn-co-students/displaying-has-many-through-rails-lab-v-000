class DoctorsController < ApplicationController

	def index
		@doctor = Doctor.all
	end

	def create
		@doctor = Doctor.new(post_params(:name, :department))
		@doctor.save
		redirect_to doctor_path(@doctor)
	end


	def	show
		@doctor = Doctor.find(params[:id]) 
	end

	private

	def doctor_params
	  params.require(:doctor).permit(:name, :department, :appointment)
	end



end
