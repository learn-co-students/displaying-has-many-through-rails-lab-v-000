class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
    @doctor = @appointment.doctor
    @patient = @appointment.patient
  end
end
