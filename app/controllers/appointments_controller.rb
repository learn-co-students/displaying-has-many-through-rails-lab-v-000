class AppointmentsController < ApplicationController

  def show
    find_appointment
  end

  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end
end
