class AppointmentsController < ApplicationController
  def show
    find
  end

  private 

  def find 
    @appointment = Appointment.find(params[:id])
  end
end
