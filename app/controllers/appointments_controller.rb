class AppointmentsController < ApplicationController

  def index 
    @appointments = Appointment.all
  end 
  
  def show
    @appointment = Appointment.find(params[:id])
  end
end
