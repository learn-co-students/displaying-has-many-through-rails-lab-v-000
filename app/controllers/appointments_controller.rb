class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show]
  def show

  end

  private
  def set_appointment
    @appointment = Appointment.find_by_id(params[:id])
  end
end
