class DoctorsController < ApplicationController

  def new
    @doctor = Doctor.new
  end
  
  def index 
    @doctor = Doctor.all
  end
  
  def show
    @doctor = Doctor.find(params[:id])
  end
  
  def create
  end

end
