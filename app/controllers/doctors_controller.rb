class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
    @doctor_appointment_datetime = @doctor.appointments
  end

end
