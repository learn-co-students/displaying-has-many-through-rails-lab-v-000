class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def create
  end

  def show
    @doctor = Doctor.find(params[:id])

  end

  def index
    @doctors = Doctor.all
  end
end
