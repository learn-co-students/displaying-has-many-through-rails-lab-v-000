class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)


    if @appointment.valid?
      @appointment.save
      redirect_to @appointment
    else
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

private
  def appointment_params
    params[:appointment].permit(:appointment_datetime, :doctor_id, :patient_id)
  end
end