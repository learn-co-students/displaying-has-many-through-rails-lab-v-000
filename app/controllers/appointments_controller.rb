class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.includes(:doctor, :patient).find(params[:id])
  end
end
