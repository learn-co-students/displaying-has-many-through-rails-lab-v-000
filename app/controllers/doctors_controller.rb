class DoctorsController < ApplicationController
  
  def index 
    @doctors = Doctors.all
  end 
  
  def show 
    @doctor = Doctor.find(params[:id])  
  end 
  
end
