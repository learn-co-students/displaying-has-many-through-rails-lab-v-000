class DoctorsController < ApplicationController
  def show
    doctor = Doctor.find_by(params[:id])
    @appointment = doctor.appointments
  end

  def index
  end
end
