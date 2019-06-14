class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(doctor_params)
    if @doctor.valid?
      redirect_to @doctor
    else
      render :new
    end
  end

  def show
    @doctor = Doctor.find_by(id: params[:id])
  end

  def edit
    @doctor = Doctor.find_by(id: params[:id])
  end

  def update
    @doctor = Doctor.find_by(id: params[:id])
    @doctor.update(doctor_params)
    if @doctor.valid?
      redirect_to @doctor
    else
      render :edit
    end
  end

  def delete
    @doctor = Doctor.find_by(id: params[:id])
    @doctor.destroy
    redirect_to doctors_path
  end

  private

    def doctor_params
      params.require(:name, :department)
    end
end
