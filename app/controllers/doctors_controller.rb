class DoctorsController < ApplicationController

  def index
    @all = Doctor.all
  end

  def create
  end

  def new
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def edit
  end
end
