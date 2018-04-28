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
	end

	def show
		@doctor = Doctor.find(params[:id])
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
    params.require(:doctor).permit(:name, :department, appointment_attributes: [:id, :datetime])
  	end

end
