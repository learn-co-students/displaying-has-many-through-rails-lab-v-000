class AppointmentsController < ApplicationController
  def create
    @appointment.create(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def new
    @appointment = Appointment.new
  end

  def edit

  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def update

  end

  private

  def appointment_params
    params.require(:appointments).permit(:appointment_datetime, accepts_nested_attributes_for: [:name, :department])
  end

end
