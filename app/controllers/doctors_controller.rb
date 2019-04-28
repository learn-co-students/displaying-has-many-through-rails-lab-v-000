class DoctorsController < ApplicationController
  before_action :find_doctor [:show, :edit, :update, :destroy]
  
  def index
    @doctors = Doctor.all
  end

  def show

  end

  private
    def doctor_params
      params.require(:doctor).permit(:name, :department)
    end

    def find_doctor
      @doctor = Doctor.find([:id])
    end
end