class PatientsController < ApplicationController
	def index
		@patients = Patient.all
		render :index
	end

	def show
		@patient = Patient.find(params[:id])
		render :show
	end
end
