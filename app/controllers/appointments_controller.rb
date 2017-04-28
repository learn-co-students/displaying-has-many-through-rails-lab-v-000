class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
    # @appointment = Appointment.find(appointment_params)
  end

  # private
  #
  # def appointment_params
  #   params.require(:appointment).permit(:datetime, :id)
  # end
end
