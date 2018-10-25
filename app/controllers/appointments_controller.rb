class AppointmentsController < ApplicationController
 

  def new
    
  end
  
  def create

  end
  
  def show
    @appointment = Appointment.find(params[:id])
  end

  def edit
   
  end

  def update

  end

end
