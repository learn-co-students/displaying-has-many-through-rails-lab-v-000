class PatientsController < ApplicationController
  def index
    @all = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])

    @patient.appointments.each do |appt|
      @doctor = Doctor.find_by(id: appt.doctor_id)
    end
  end
end
