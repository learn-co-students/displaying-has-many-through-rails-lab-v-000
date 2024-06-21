class DoctorsController < ApplicationController

  def show
    @doctor = Doctor.find_by_id(params[:id])
    @appointments = @doctor.appointments
    
  end

end
