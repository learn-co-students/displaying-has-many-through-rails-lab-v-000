class AppointmentsController < ApplicationController



  def show
    @appt = Appointment.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
