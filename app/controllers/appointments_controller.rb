
class AppointmentsController < ApplicationController

  def show
    @appointment = appointment
  end

  def appointment
    Appointment.find(params[:id])
  end
end
