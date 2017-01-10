class DoctorsController < ApplicationController
  
  def index
  end
  
  def create
  end
  
  def new
  end

  def edit
  end

  def show
    #binding.pry
    @doctor = Doctor.find(params[:id])
  end

  def update
  end

end
