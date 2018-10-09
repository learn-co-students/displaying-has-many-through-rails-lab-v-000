class AppointmentsController < ApplicationController
  before_action :get_appointment, only: [:show]

  def show
  end

  private
  def appointment_params
    params.require(:appointment).permit(:appointment_datetime)
  end

  def get_appointment
    @appointment = Appointment.find(params[:id])
  end
end
