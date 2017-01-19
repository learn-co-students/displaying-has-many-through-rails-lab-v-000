class AppointmentsController < ApplicationController

  def show
    #raise params.inspect
    @appointment = Appointment.find_by_id(params[:id])
    #binding.pry
  end
  
end
