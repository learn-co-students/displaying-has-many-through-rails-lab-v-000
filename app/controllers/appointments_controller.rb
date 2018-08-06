class AppointmentsController < ApplicationController
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

  def index
  end

  def show
    @appointment = Appointment.find_by_id(params[:id])
  end
end
