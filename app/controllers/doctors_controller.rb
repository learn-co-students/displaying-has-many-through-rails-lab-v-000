class DoctorsController < ApplicationController

  def new
    @doctor = Doctor.new
  end

  def create
  end

  def show
    @doctor = Doctor.find(params[:id])
  end


  private

  def doctor_params
    params.require(:doctor).permit(:name, :deprtment)
  end
end
