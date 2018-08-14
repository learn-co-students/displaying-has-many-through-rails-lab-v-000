class PatientsController < ApplicationController
  
  def index
    @patients = Patient.all
  end
  
  def new
    @patient = Patient.new
  end
  
  def create
    @patient = Patient.create(patient_params)
  end
  
  def edit
    @patient = Patient.find_by(id: params[:id])
  end
  
  def update
    @patient = Patient.find_by(id: params[:id])
  end
  
  def show
    @patient = Patient.find_by(id: params[:id])
  end
  
  def destroy
  end
  
private

  def patient_params
    params.require(:patient).permit(:name, :age)
  end
  
end
