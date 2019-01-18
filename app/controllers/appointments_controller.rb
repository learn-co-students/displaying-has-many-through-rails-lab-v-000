class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find_by(params[:id])
  end

  def index
    @appointment = Appointment.all
  end

end
