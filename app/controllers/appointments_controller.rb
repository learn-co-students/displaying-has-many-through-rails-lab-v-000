class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

end
