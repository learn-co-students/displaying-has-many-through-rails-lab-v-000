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
  end

  private

  def patient_params
    params.require(:patient).permint(:name, :age)
  end

end
