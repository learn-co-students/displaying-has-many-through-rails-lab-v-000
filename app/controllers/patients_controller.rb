class PatientsController < ApplicationController
  def index
    @doctors = Doctor.all
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
    @appointments = @patient.appointments
  end



end
