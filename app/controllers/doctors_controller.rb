class DoctorsController < ApplicationController

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create!
  end

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end
end
