class AppointmentsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def destroy
  end

  def show
    @appointment = Appointment.find(params[:id])
  end
end
