class PatientsController < ApplicationController
	def index
		@patients = Patient.all 
	end

	def show
		@patient = Patient.find(params[:id])
	end

	def appointments_count
		self.patient.count 
	end
end
