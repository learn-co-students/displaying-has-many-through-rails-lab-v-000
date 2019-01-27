class DoctorsController < ApplicationController

    def new
    end
  
    def create
      @doctor = Doctor.create(doctor_params)
      redirect_to doctor_path(@doctor)
    end
  
    def show
      @doctor = Doctor.find(params[:id])
    end
  
    def doctor_params
      params.require(@doctor).permit(:name,:department,:appointments)
    end
  end