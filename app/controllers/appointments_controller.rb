class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
  end

  #I went crazy with rails g controller ...
  
  def index
  end

  def new
  end

  def create
  end
end
