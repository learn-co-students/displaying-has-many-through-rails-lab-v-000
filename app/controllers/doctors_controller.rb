class DoctorsController < ApplicationController
  before_action :get_doctor, only: [:show]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  private
  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end

  def get_doctor
    @doctor = Doctor.find(params[:id])
  end
end
