class DoctorsController < ApplicationController
  
  def index
    @doctors = Doctor.all
  end
  
  def new
    @doctor = Doctor.new
  end
  
  def create
    @doctor = Doctor.create(doctor_params)
  end
  
  def edit
    @doctor = Doctor.find_by(id: params[:id])
  end
  
  def update
    @doctor = Doctor.find_by(id: params[:id])
  end
  
  def show
    @doctor = Doctor.find_by(id: params[:id])
  end
  
  def destroy
  end
  
private

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end
  
end
