class AppointmentsController < ApplicationController
  def show
    @appt = Appointment.find(params[:id])
  end
end
