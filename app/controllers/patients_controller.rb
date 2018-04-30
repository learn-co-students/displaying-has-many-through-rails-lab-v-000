class PatientsController < ApplicationController
	before_action :set_patient, only: [:show, :edit, :update, :destroy]

	def index 
		@patients = Patient.all 
	end 

	def show 

	end 


	private 

		def patient_params 
			params.require(:patient).permit(:name, :department)
		end 

		def set_patient
			@patient = Patient.find(params[:id])
		end 
end
