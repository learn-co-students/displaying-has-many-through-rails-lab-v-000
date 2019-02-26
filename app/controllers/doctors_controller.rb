class DoctorsController < ApplicationController
  before_action :set_doctor!, only: [:show]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  private

  def set_doctor!
    @doctor = Doctor.find_or_create_by(id: params[:id])
  end
end
