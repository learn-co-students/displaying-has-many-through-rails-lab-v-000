class AppointmentsController < ApplicationController

  def show
    # binding.pry
    @appointment = Appointment.find_by(id: params[:id])
    @appointment_doctor = @appointment.doctor
    @appointment_patient = @appointment.patient
  end

end
