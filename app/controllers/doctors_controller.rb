class DoctorsController < ApplicationController

  def show
    current_doctor
  end

  private

  def current_doctor
    @doctor = Doctor.find(params[:id])
  end

end
