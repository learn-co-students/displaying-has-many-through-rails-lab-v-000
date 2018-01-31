class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.save
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private
    def appointment_params
      params.require(:appointment).permit(:appointment_datetime, :doctor_name, :patient_name)
    end
end
