class DoctorsController < ApplicationController

  before_action :find_doctor, only: [:show, :edit, :update, :destroy]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to @doctor
    else
      render :new
    end
  end

  def edit
  end

  def update

    @doctor.update(doctor_params)

    if @doctor.save
      redirect_to @doctor
    else
      render :edit
    end

  end

  def destroy

    @doctor.destroy
    redirect_to patients_path
  end

  private

  def find_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end

end
