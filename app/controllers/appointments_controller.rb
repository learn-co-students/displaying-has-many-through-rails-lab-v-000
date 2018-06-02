class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
    # puts "Appointment time = #{@appointment.appointment_datetime} || #{@appointment.appointment_time}"
  end

end
