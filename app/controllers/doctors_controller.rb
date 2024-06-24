class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to doctor_path(@doctor)
    else
      render :new
    end
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update
    @doctor = Doctor.find(params[:id])
    if @doctor.update(doctor_params)
      redirect_to doctor_path(@doctor)
    else
      render :edit
    end
  end

  def delete
    @doctor = Doctor.find(params[:id]).destroy
  end
end
