class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = set_patient
    @appointments_by_time = @patient.appointments.order(:appointment_datetime)
  end

  def set_patient
    Patient.find(params[:id])
  end
end
