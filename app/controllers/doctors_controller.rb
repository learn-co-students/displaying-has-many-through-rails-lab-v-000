class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all.order(:name)
  end

  def show
    @doctor = Doctor.find(params[:id])
  end
end
