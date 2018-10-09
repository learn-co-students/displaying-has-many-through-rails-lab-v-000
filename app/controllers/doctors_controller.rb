class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show]
  def new

  end

  def create

  end
  
  def show

  end

  def index

  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
