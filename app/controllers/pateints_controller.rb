class PatientsController < ApplicationController
  def index
    @patients = Patients.all
  end

  def show
    @patient = Patient.find(params[:id])
  end
end
