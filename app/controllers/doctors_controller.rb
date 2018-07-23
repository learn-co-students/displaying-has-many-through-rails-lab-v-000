class DoctorsController < ApplicationController
  def index
  end

  def show
    find
  end

  private 

  def find
    @doctor = Doctor.find(params[:id])
  end
end
