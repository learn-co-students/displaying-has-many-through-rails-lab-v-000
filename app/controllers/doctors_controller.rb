class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all.sort_by{|doc| doc.name}
  end
  def show
    @doctor = Doctor.find(params[:id])
  end
end
