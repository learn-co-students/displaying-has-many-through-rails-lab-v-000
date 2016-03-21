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

  def show
    @patient = patient
  end

  private

  def patient
    Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, :age)
  end

end
