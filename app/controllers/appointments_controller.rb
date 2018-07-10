class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end

  # private
  #
  # def appointment_params
  #   params.require(:appointment).permit(:date_time, :patient, :doctor)
  # end
end
