class DoctorsController < ApplicationController

  def show
    @doctor = Doctor.find(params[:id])
    @appointments = @doctor.appointments
  end

  def index
    @doctors = Doctor.all
  end
end
