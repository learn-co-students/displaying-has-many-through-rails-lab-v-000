class AppointmentsController < ApplicationController
  before_action :set_appointment!, only: [:show]

  private

  def set_appointment!
    @appointment = Appointment.find_or_create_by(params[:id])
  end
end
