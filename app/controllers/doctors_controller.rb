class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show]
  def show
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
