class DoctorsController < ApplicationController
  def new
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def create
  end
end
