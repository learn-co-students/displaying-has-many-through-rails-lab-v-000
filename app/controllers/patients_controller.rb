class PatientsController < ApplicationController

	def new
		@patient = Patient.new
	end

	def show
		@patient = Patient.find(params[:id])
		redirect_to :patients
	end

	def index
		@patients = Patient.all 
	end

	def create

	end

	def update
	end

	private

	def patient_params
		params.require(:patient).permit(:name, :age)
	end

	
end
