class DoctorsController < ApplicationController
  def new
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end
end
