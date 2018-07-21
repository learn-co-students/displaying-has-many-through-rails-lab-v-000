class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def create
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def show
    @doctor = Doctor.find(params[:id])
  end
end
