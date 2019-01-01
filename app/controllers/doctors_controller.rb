class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
    @patients = @doctor.patients
    @appointments = @doctor.appointments
  end
end
