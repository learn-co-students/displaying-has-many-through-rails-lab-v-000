class DoctorsController < ApplicationController
  
  def index
  end

  def show
    @doctor = Doctor.find(params[:id])
    @appointments = @doctor.appointments
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
