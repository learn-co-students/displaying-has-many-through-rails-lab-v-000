class DoctorsController < ApplicationController

  def show
    @doctor = Doctor.find(params[:id])
    @patient = Patient.find(params[:id])
    @appointment = Appointment.find(params[:id])
  end

  def new
  end

  def index
  end
end
