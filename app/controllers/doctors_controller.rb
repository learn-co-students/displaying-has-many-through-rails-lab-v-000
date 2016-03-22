class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(doctor_params)
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  private
    def doctor_params
      params.require(:doctor).permit(:name, :department)
    end
end
