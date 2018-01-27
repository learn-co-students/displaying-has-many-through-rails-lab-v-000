class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end

  def update
  end

  def edit
  end
  #strong params
  private
  def doctor_params#
   params.require(:doctor).permit(:name, :doctor, :appointments_attributes => [:appointment_datetime])
  end
end
