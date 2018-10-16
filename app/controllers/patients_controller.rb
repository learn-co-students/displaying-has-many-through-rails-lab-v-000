class PatientsController < ApplicationController

  def show
    @patient = Patient.find(params[:id])
  end

  def index
    @patients = Patient.all
  end

  def new
  end

  def create
  end


  def patient_params
  end

end
