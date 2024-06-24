class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
    @doctor = Doctor.find_by_id(@appointment.doctor_id)
    @patient = Patient.find_by_id(@appointment.patient_id)
  end

  def new
    @appointment = Appointment.new
  end
end
