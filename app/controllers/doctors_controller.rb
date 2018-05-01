class DoctorsController < ApplicationController

	def index
		@doctors = Doctor.all
	end

	def create
		@doctor = Doctor.create(doctor_params)
		redirect_to :doctors
	end

	def new
		@doctor = Doctor.new
		redirect_to :doctor
	end

	def show
		@doctor = Doctor.find(params[:id])
		redirect_to :doctors
	end

	def update
		@doctor = Doctor.find(params[:id])
		@doctor.update(doctor_params)
		redirect_to :doctor
	end

	def destroy
	end

	def edit
	end

	private
	def doctor_params
    params.require(:doctor).permit(:name, :department, patient_attributes: [:name, :age, doctor_attributes:] appointment_attributes: [:day, :date, :hour, :min])
  	end

end
