class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find_by(id: params[:id])
  end
end
