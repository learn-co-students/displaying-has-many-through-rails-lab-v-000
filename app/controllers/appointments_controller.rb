class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
    @patient_name = @appointment.patient.name
    @patient_age = @appointment.patient.age
    @appointment_doctor_name = @appointment.doctor.name
  end
end
