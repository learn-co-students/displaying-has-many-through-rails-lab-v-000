class DoctorsController < ApplicationController

  def show
    @doctor = Doctor.find(params[:id])
  end

  def index
    @doctors = Doctor.all
  end

  def new
  end

  def create
  end


  def doctor_params
  end

end
