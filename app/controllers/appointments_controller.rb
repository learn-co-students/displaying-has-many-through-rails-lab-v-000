class AppointmentsController < ApplicationController
  def index

  end

  def show
    @appointment = Appointment.find(params[:id])
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

  private

  def appointment_params
    params.require().permit()
  end
end
