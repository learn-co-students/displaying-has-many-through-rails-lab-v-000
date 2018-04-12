class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = set_doctor
    @appointments_by_date = @doctor.appointments.order(:appointment_datetime)
  end

  def set_doctor
    Doctor.find(params[:id])
  end
end
