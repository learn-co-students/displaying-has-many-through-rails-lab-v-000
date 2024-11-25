class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find_by(params[:id])
  end
end
