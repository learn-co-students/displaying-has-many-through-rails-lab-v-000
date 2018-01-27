class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    set_doctor
    @appointments = @doctor.appointments
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end


end
