class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
    @doctor.appointments.each do |appointment|
      @patient = Patient.find_by(id: appointment.patient_id)
    end
  end
end
