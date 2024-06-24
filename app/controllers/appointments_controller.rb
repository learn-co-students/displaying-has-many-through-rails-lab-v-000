class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    appointment = Appointment.create(params[:appointment])
    redirect_to appointment_path(appointment)
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    appointment = Appointment.find(params[:id])
    appointment.update(params.require(:appointment))
    redirect_to appointment_path(appointment)
  end
end
