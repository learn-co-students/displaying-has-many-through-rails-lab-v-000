class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    binding.pry
  end

  def show
    set_appointment
  end

  private
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
end
