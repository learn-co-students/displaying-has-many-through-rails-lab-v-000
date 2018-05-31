class AppointmentsController < ApplicationController
  def show
    @appt = Appointment.find(params[:id])
    @patient = Patient.find(params[:id])
    @doctor = Doctor.find(params[:id])
  end
end
