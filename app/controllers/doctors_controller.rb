class DoctorsController < ApplicationController

  def index
  end

  def new
    @doctor = Doctor.new
  end

  def create
  end

  def show
    @doctor = Doctor.find(params[:id])
  end
end
