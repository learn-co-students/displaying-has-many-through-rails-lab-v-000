class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all.sort_by{|doctor| doctor.name}
  end

  def show
    @doctor = Doctor.find_by(id: params[:id])
  end
end
