class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
  end

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create(patient_params)
    redirect_to patient
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :age, :appointment, :doctor_name)
  end

end
