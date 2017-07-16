class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def create
		doctor = Doctor.create(params[:name, :department])
		redirect_to doctor_path(doctor)
	end

  def index

  end

  def show
    @doctor = Doctor.find(params[:id])
  end
end
