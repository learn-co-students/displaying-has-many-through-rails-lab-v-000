class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(doctor_params)
    redirect_to @doctor
  end

  private

    def doctor_params
      params.require(:doctor).permit(
        :name,
        :department
      )
    end

end
