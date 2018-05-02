class PatientsController < ApplicationController

	def new
		@patient = Patient.new
		redirect_to :patient
	end

	def show
		@patient = Patient.find(params[:id])
		redirect_to :patients
	end

	def index
		@patients = Patient.all 
		redirect_to :patients
	end

	def create
		@patient = Patient.create(params[:id])
		redirect_to :patient
	end

	def update
	end

	private

	def patient_params
		params.require(:patient).permit(:name, :age, doctor_attributes:[:name, :department], appointment_attributes:[:day, :date, :hour, :min])
	end

	
end
