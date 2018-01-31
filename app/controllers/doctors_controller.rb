class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
    render :show
  end
end
