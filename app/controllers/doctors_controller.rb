class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
    @doctor.appointments.each do |appt|
      @patient = Patient.find_by(id: appt.patient_id)
    end
  end
  
end
