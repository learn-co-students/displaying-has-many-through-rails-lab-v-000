class DoctorsController < ApplicationController
	before_action :set_doctor, only: [:show, :edit, :update, :destroy]

	def index 
		@doctors = Doctor.all 
	end 

	def new 
		@doctor = Doctor.new 
	end 

	def show 
		
	end 


	private 

		def doctor_params 
			params.require(:doctor).permit(:name, :department)
		end 

		def set_doctor
			@doctor = Doctor.find(params[:id])
		end 
end
