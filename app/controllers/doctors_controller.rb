class DoctorsController < ApplicationController
  before_action :load_doctor, only: [:show]

  def index
    @doctors = Doctor.all
  end

  def show
    @appointments = @doctor.appointments
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end

  def load_doctor
    @doctor = Doctor.find(params[:id])
  end
end
