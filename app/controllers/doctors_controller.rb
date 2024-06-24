class DoctorsController < ApplicationController

  def show
    @doctor = Doctor.find(params[:id])
  end



  private

  def appointment_params
    params.require(:doctor).permit(:name, :department, :appointments)
  end

end
