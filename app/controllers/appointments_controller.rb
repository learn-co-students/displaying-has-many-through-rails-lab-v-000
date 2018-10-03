class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create!
  end

  def index

  end

  def show
    @appointment = Appointment.find(params[:id])
  end
end
