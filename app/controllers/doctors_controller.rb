class DoctorsController < ApplicationController
  def show
    set_doctor
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
