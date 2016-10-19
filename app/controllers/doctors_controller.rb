class DoctorsController < ApplicationController
   before_action :doctors, only: [:show]



  def show
  end



  private

  def appointment_params
    params.require(:doctor).permit(:name, :department, :appointments)
  end

  def doctors
    @doctors = Doctor.all
  end
end
