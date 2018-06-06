class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def create
    @doctor.create(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  def new
    @doctor = Doctor.new
  end

  def edit

  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def update

  end

  private

  def doctor_params
    params.require(:doctors).permit(:name, :department, :accepts_nested_attributes_for [
      :appointment_datetime,

      ])
  end

end
