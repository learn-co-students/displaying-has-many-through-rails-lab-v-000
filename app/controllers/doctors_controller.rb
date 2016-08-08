class DoctorsController < ApplicationController 
  before_action :set_doctor, only: [:show, :edit]
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
