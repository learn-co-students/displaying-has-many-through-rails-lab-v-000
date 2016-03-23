class PatientsController < ApplicationController
  def new
    @patients = Patients.all 
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def create
  end

  def index
  end
end
