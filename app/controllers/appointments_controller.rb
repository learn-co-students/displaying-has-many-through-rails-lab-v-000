class AppointmentsController < ApplicationController

  def index
    @appts = Appointments.all
  end

  def show
    @appt = Appointment.find(params[:id])
  end

  def new
    @appt = Appointment.new
  end

  def create
  end


end
