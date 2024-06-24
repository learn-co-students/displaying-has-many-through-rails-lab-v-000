class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
  end

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def create
    @doctor.create(doctor_params)
    if @doctor.save
      redirect_to doctor_path(@doctor)
    else
      render :new
    end
  end

  def update
    @doctor = Doctor.find(params[:id])
    if @doctor.update(doctor_params)
      redirect_to doctor_path(@doctor)
    else
      render :edit
    end
  end

  def destroy
    Doctor.find(params[:id]).destroy
    redirect_to doctors_url
  end

  private

  def doctor_params
    params.require(:doctor).permit(
      :name,
      :department
    )
  end
end
