class DoctorsController < ApplicationController
	before_action :set_doctor, only: [:show, :edit, :update, :destroy]

	def index 
		@doctors = Doctor.all
	end 

	def new 
	end

	def show 
	end 

	def create
		@doctor = Author.new(doctor_params(:name, :department))
	  if @doctor.valid?
	  	@doctor.save
	  	redirect_to doctor_path(@doctor)
	  else 
	  	render :new
	  end 
	end 

	def edit 
	end 

	def update 
		@doctor.update_atributes(doctor_params(:name, :department))
	  if @doctor.valid?
	  	@doctor.save
	  	redirect_to doctor_path(@doctor)
	  else 
	  	render :edit
	  end
	end

	private 

	def set_doctor 
		@doctor = Doctor.find(params[:id])
	end

	def doctor_params 
		params.require(:doctor).permit(:name, :department)
	end
end
