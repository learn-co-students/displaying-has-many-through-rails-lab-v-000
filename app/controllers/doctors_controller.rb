class DoctorsController < ApplicationController
  def index
    @doctor = Doctor.all
  end

  def new
    @doctor = Doctor.new
    @doctor.appointments.build

  end

  def create
    @doctor = Doctor.create(doctor_params)

    redirect_to doctor_path(@doctor)
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def update
  end

  private
    def doctor_params
      params.require(:doctor).permit(:name, :department, appointment_id, appointments_attributes: [:appointment_datetime])
    end

end
