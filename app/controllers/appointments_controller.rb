class AppointmentsController < ApplicationController
  def new
    @appointments = Appointment.new
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.create(appointment_params)
  end

  private

  def appointment_params
    params.require(:appointments).permit(:appointment_datetime, :doctor, :patient)
  end
end