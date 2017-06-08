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
  end
end
