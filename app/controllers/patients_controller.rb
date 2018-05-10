class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
    @patient.appointments.each do |appointment|
      @doctor = Doctor.find_by(id: appointment.doctor_id)
    end
  end
end
