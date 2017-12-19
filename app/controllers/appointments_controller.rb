class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
  end

  def create
    appointment = Appointment.create(appointment_params)
    redirect_to appointment
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def update
    appointment = Appointment.find(params[:id])
    appointment.update(appointment_params)
    redirect_to appointment
  end

  private

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)
  end

end
