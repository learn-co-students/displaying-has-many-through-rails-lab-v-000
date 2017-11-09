class AppointmentsController < ApplicationController

  # def index
  #   @appointments = Appointment.all
  # end

  def show
    set_appointment
    @datetime = @appointment.appointment_datetime.strftime("%B %d, %Y at %k:%M")
    @patient = @appointment.patient
    @doctor = @appointment.doctor
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end


end
