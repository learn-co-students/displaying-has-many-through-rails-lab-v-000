class AppointmentsController < ApplicationController

  def show
    @appt = Appointment.find(params[:id])
    @doctor = Doctor.find_by(id: @appt.doctor_id)
    @patient = Patient.find_by(id: @appt.patient_id)

  end

end
