class DoctorsController < ApplicationController
  before_action :set_doctor!, only: [:show, :edit, :update, :delete]
  
 	def index
		@doctors = Doctor.all
	end
	
 	def show
	end
	
 	def new
		@doctor = Doctor.new
	end
	
 	def edit
	end
	
 	def update
	  @doctor.update(doctor_params)
	  redirect_to doctor
	end
	
 	def create
		@doctor = Doctor.create(doctor_params)
		if @doctor.save?
			redirect_to doctor_path(@doctor)
		else
			render :new
		end
	end
	
 	private
 	
	def set_doctor!
	  @doctor = Doctor.find_by(id: params[:id])
	end
	
 	def doctor_params
	 params.require(:doctor).permit(:name, :department)
	end
	
end
