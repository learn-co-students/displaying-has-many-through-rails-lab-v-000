class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
  end

  def create
  end

  def show
    @appointment = Appointment.find_by(params[:id])
  end
end
