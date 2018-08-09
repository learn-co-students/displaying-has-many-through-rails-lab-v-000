class PatientsController < ApplicationController
  def index
  	@patients = Patient.all
  end

  def show
  	@patient = Patient.find(params[:id])
  	@appointments = @patient.appointments
  end

  def new
  end

  def create
  end
end
