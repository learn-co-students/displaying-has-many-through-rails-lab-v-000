class DoctorsController < ApplicationController
  before_action :set_doctor!, only: [:edit, :show, :update, :destroy]

  def index
    @doctors = Doctor.all
  end

  def create
    @doctor = Doctor.create(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  def new
    @doctor = Doctor.new
  end

  def edit
  end

  def show
  end

  def update
    @doctor.update(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  def destroy
    @doctor.destroy
    redirect_to doctor_path
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end

  def set_doctor!
    @doctor = Doctor.find(params[:id])
  end
end
