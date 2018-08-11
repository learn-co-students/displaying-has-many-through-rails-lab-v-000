class AppointmentsController < ApplicationController

	  def show
	    @appointment = Appointment.find(params[:id])
	  end

	  def new
	    @appointment = Appointment.new
	    #this creates the fields on the form automatically
	    #Anything in quotes is just a place holder
	    @appointment.doctor.build(:appointment_datetime, :patient_id, :doctor_id)
	    @appointment.doctor.build(:appointment_datetime, :patient_id, :doctor_id)
	 

	  end
	  
	  def create
	   #this is taking the stong params method as a argument
	    @appointment = Appointment.create(appointment_params)
	    redirect_to appointment_path(@appointment)
	  end
	 
	 
	 
	  private
	 
	  def appointment_params
	    #these are the params that create takes to create a new object and displays them on the show page
	    #Name form inputs correctly to create a nested params hash with belongs to and has many associated data.
	    params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)  
	end
end




