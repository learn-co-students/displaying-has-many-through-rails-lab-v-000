require 'pry'

class DoctorsController < ApplicationController
  def show 
    @doctor = Doctor.find(params[:id])

  end
  
  def index
    @doctors = Doctor.all
  end
  
  def new
    @doctor = Doctor.new
  end
  
  def create 
    doctor = Doctor.create(doctor_params)
    redirect_to doctor
  end
  
  private 
    def doctor_params
      params.require(:doctor).permit(:name, :department)
    end
  
end
