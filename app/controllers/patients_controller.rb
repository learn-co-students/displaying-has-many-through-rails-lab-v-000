class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
  end

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
    #this creates the fields on the form automatically
    #Anything in quotes is just a place holder
    @patient.appointment.build(:name, :age)
    @patient.appointment.build(:name, :age)
  end
  
  def create
   #this is taking the stong params method as a argument
    @patient = Patient.create(patient_params)
    redirect_to patient_path(@patient)
  end
 
 
 
  private
 
  def patient_params
    #these are the params that create takes to create a new object and displays them on the show page
    #Name form inputs correctly to create a nested params hash with belongs to and has many associated data.
    params.require(:patient).permit(:name, :age)  end
end

