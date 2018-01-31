class DoctorsController < ApplicationController
    before_action :set_doctor, only: [:show]
  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
      @doctor = Doctor.new(doctor_params)
  end

private

def doctor_params
  params.require(:doctor).permit(:name, :department)
end
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
