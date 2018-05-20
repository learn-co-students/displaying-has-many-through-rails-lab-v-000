class DoctorsController < ApplicationController

  def show
    @doctor = doctor
    @appointments = @doctor.appointments
  end

  def doctor
    Doctor.find(params[:id])
  end
end
