class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find_by(params[:id])
  end

  def index
    @appointments = Appointment.all
  end


end
