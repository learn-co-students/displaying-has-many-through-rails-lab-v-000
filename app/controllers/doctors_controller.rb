class DoctorsController < ApplicationController
  # before_action :set_doctor, only: [:show]
  def show
    @doctor = Doctor.find_by(params[:id])
  end

  # private
  #   def set_doctor 
  #     @doctor = Doctor.find_by(params[:id])
  #   end
end
