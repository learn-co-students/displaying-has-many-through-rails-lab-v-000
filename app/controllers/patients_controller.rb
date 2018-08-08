class PatientsController < ApplicationController
  def new
  end

  def show
    @doctor = Doctor.find(params[:id])
    @patient = Patient.find(params[:id])
    @appointments = Appointment.all
    @appointment = Appointment.find(params[:id])
  end

  def index
    @patients = Patient.all
    @appointments = Appointment.all
  end
end
