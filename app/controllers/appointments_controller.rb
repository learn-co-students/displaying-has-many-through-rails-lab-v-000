class AppointmentsController < ApplicationController
  
  def show
    @appointment = Appointment.find(params[:id])
    @datetime = @appointment.appointment_datetime.strftime("%B %d, %Y at %H:%M")
    @patient = @appointment.patient
    @doctor = @appointment.doctor
  end

end