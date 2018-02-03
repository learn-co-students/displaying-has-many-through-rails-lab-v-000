class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
  end

  def create
  end

  def new
    @appointment = Appointment.new
  end
end
