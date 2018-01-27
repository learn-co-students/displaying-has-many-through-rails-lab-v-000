class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :update, :edit]

  def index
    @doctors = Doctor.all
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
