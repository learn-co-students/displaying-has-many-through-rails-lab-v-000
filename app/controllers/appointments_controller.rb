class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find_by_id(params[:id])
    @doctor = @appointment.doctor
    @patient = @appointment.patient
  end
end
