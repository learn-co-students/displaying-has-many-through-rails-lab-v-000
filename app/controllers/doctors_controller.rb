class DoctorsController < ApplicationController
	
  def show
    @doctor = Doctor.find(params[:id])
  end

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
    #this creates the fields on the form automatically
    #Anything in quotes is just a place holder
    @doctor.build(:name, :department)
    @doctor.build(:name, :deparment)
  end
  
  def create
   #this is taking the stong params method as a argument
    @doctor = Doctor.create(doctor_params)
    redirect_to doctor_path(@doctor)
  end
 
 
 
  private
 
  def doctor_params
    #these are the params that create takes to create a new object and displays them on the show page
    #Name form inputs correctly to create a nested params hash with belongs to and has many associated data.
    params.require(:doctor).permit(:name, :deparment)  end
end


