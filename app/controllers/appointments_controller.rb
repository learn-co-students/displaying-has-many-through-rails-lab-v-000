require 'pry'
class AppointmentsController < ApplicationController
  def index

  end

  def show
    #binding.pry
    if params[:id]
    @appointment = Appointment.find(params[:id])
    end
  end

end
