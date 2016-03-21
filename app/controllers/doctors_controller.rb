class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(doctor_params)
  end

  def show
    @doctor = doctor
  end

  private

  def doctor
    Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end
end
