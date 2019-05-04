class AppointmentsController < ApplicationController
  def show
    @appointment = set_appointment
  end

  def set_appointment
    Appointment.find(params[:id])
  end
end
