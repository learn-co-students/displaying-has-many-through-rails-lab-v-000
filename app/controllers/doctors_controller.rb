class DoctorsController < ApplicationController
  def show
    set_doctor
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  # def edit
  #
  # end
  #
  # def destroy
  #
  # end

  private

    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    def doctor_params
      params.require(:doctor).permit(:name, :department, appointment_attributes: [:appointment_datetime])
    end
end
