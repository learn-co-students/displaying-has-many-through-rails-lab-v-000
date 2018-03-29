class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
    @patient = @appointment.try(:patient)
    @doctor = @appointment.try(:doctor)
    @time = @appointment.try(:appointment_datetime)
  end


end
