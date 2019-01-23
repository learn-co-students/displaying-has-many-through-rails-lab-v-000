class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

end


#  private

#  def doctor_params
#    params.require(:doctor).permit(:name, :department, :appointment)
#  end
