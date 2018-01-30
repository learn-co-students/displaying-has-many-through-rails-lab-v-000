class DoctorsController < ApplicationController

  def show
    @doctor = Doctor.find(params[:id])
    @appointments = @doctor.appointments
    @patients = @doctor.patients
  end
end
