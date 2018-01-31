class PatientsController < ApplicationController
  before_action :set_patient, only: [:show]

  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new
  end

  def create
      @patient = Patient.new(patient_params)
  end

private

def patient_params
  params.require(:patient).permit(:name, :age)
end
  def set_patient
    @patient = Patient.find(params[:id])
  end
end
