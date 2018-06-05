class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def create
    @doctor.create(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  def new

  end

  def edit

  end

  def show

  end

  def update

  end

  private

  def doctor_params
    params.require(:doctors).permit(:name, :department)
  end

end
