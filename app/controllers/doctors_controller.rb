class DoctorsController < ApplicationController
	def index
		@doctors = Doctor.all
	end

	def show
		@doctor = Doctor.find(params[:id])
		
	end

	def new
		@doctor = Doctor.new
		@doctor.appointments.build(appointment_datetime: params[:appointment_datetime])
	 @doctor.appointments.build(patient_id: params[:patient_id])
		@patients = Patient.all
	end

	def create
		doctor = Doctor.create(params[:doctor])
		redirect_to doctor_path(doctor)
	end

	def edit
		@doctor = Doctor.find(params[:id])
		@patient = Patient.all
	end

	def update
		doctor = Doctor.find(params[:id])
		doctor.update(params.require(:doctor))
		redirect_to doctor_path(doctor)
	end
end
