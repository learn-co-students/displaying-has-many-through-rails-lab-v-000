class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    if params[:id]
    @doctor = Doctor.find(params[:id])
    end
  end
end
