class DoctorsController < ApplicationController

  def new
  end

  def create
  end

  def show
    @doctor = Doctor.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

end
