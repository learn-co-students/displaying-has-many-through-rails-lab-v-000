class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    find_doctor
  end

  def new
    @doctor = Doctor.new(doctor_params)
  end

  def create
    @doctor= Doctor.create
      if @doctor.save
        redirect_to doctor_path(@doctor)
      else
        render :new
      end
  end

  def update
    find_doctor
    @doctor.update(doctor_params)
  end

  private

  def find_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end
end
