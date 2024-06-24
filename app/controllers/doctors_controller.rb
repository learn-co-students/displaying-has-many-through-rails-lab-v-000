class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
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

  def show
    @doctor = Doctor.find(params[:id])
  end

  def edit
    @doctor = Doctor.find(params[:id])
    @doctor = Doctor.update(doctor_params)
    @doctor.save
    redirect_to @doctor
  end

  def destroy
    @doctor.destroy
  end

  private

    def doctor_params
      params.require(:doctor).permit(
        :name,
        :department,
        :appointment
      )
    end

end
