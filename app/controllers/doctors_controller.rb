class DoctorsController < ApplicationController

  def show
    @doctor = Doctor.find(params[:id])
  end


  private
  def doctor_params
    params.require(:doctor).permit(:name, :department, :appointments, :patients)
  end
end
