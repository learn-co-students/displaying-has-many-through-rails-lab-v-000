class PatientsController < ApplicationController
	before_action: set_patient, only: [:show, :edit, :update, :destroy]

	def index 
		@patients = Doctor.all
	end 

	def new 
	end

	def show 
	end 

	def create
		@patient = Author.new(patient_params(:name, :age))
	  if @patient.valid?
	  	@patient.save
	  	redirect_to patient_path(@patient)
	  else 
	  	render :new
	  end 
	end 

	def edit 
	end 

	def update 
		@patient.update_atributes(patient_params(:name, :age))
	  if @patient.valid?
	  	@patient.save
	  	redirect_to patient_path(@patient)
	  else 
	  	render :edit
	  end
	end

	private 

	def set_patient 
		@patient = Doctor.find(params[:id])
	end

	def patient_params 
		params.require(:patient).permit(:name, :age)
	end
end
