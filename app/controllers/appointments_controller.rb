class AppointmentsController < ApplicationController
include AppointmentsHelper

  def show
    @appointment = Appointment.find(params[:id])
    @appointment.full_date ||= @appointment.appointment_datetime.strftime("%B %e, %Y at %H:%M %p")
  end
end
