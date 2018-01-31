class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  # private
  #
  # def doctor_params
  #   params.require(:doctor).permit(:id, :name, :department)
  # end
end
