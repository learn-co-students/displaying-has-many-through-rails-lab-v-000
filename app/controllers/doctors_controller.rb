class DoctorsController < ApplicationController
  def index
  end

  def show
    @doctor = Doctor.find_by(params[:id])
  end

  def create
    @doctor = Doctor.create(params)
  end
end
