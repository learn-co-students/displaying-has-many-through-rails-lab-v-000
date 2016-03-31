class AppointmentsController < ApplicationController


  def new
  end

  def create
    @appointment = appointment.create(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(@appointment).permit(:patient_id,:doctor_id,:appointment_datetime)
  end

end
