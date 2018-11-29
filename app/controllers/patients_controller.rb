class PatientsController < ApplicationController
	before_action :set_patient!, only: [:show, :edit, :update]
	def index
		@patients = Patient.all
	end

	def show
		
	end

	def new
		@patient = Patient.new
	end

	def edit
	end

	def update
	  patient.update(patient_params)
	  redirect_to patient
	end

	def create
		@patient = Patient.create(patient_params)
		if @patient.save?
			redirect_to patient_path(@patient)
		else
			render :new
		end
	end

	private
	def set_patient!
	  @patient = Patient.find_by(id: params[:id])
	end

	def patient_params
	 params.require(:recipe).permit(:name, :age)
	end
end
