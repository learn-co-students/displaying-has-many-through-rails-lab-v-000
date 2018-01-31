class AppointmentsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def edit
  end
end
