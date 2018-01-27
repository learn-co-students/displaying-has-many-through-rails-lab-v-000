class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
  end

  def create
    binding.pry
		appointment = Appointment.create(appointment_params)
		redirect_to appointment_path(appointment)
	end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private

  def appointment_params
    params.require(:appointment).permit(:doctor_name, :patient_name, :appointment_datetime )
  end
end
