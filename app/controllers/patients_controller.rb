class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
  end

  def create
    raise params.inspect
    "inside the patient create action"
  end
end
