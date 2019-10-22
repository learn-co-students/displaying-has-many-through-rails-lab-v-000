class DoctorsController < ApplicationController

  before_action :set_doctor, only: [:show]

  def index
    @doctors = Doctor.all
  end

  def show
    @apps = @doctor.appointments
  end

  private

    def set_doctor
      @doctor = Doctor.find(params[:id])
    end
end
