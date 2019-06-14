class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end

  def index
    redirect_to appointment_url(@appointment), alert: "You cannot view this page."
  end

  # private
  #
  # def appointment_params
  #   params.require(:appointment).permit(:date_time, :patient, :doctor)
  # end
end
