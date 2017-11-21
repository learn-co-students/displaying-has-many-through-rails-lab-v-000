class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit]

  def index
    @doctors = Doctor.all
  end

  def show
    @appointments = @doctor.appointments
  end

  private

  def set_doctor
    @doctor = Doctor.find_by(id: params[:id])
  end
end
