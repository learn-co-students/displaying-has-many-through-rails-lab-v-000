class AppointmentController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
  end
end
