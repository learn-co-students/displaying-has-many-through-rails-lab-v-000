class AppointmentsController < ApplicationController
  def new
  end

  def index
  end

  def show
    @patient = Patient.find{params[:id]}
    @doctor = Doctor.find{params[:id]}
    @appointment = Appointment.find{params[:id]}
  end
end
