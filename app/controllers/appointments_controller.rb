  require 'pry'
 
class AppointmentsController < ApplicationController

 
  def show
    @appointment = Appointment.find(params[:id])
    # binding.pry
  end
  
end
