class AppointmentsController < ApplicationController
  def show
    @appt = Appointment.find_by(params[:id])
  end
end
