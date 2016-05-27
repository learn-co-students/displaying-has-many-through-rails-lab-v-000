class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.includes(:patients, :appointments).find(params[:id])
  end
end
