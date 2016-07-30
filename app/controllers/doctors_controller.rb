class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def show
    set_doctor
  end

  def create
    @doctor = Doctor.new

    if @doctor.save
      redirect_to @doctor
    else
      render :new
    end
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name,:department)
  end
end
