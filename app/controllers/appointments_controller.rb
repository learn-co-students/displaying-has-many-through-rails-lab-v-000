class AppointmentsController < ApplicationController
  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path
  end

  private
    def appointment_params
      params.require(:appointment).permit(:datetime, :doctor_id, :patient_id)
    end
end
