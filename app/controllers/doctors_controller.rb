class DoctorsController < ApplicationController

  def show
    @doctor = Doctor.find(params[:id])

    @doctor.appointments.each do |appt|
      @patient = Patient.find_by(id: appt.patient_id)
    end
  end
end
