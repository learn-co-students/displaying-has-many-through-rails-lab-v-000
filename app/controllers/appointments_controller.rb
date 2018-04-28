class AppointmentsController < ApplicationController

	def new
		@appointment = Appointment.new
	end

	def create
		@appointment = Appointment.create(appointment_params)
		redirect_to :appointments 
	end

	def edit
	end

	def update
		@appointment = Appointment.find(params[:id])
		@appointment.update(appointment_params)
		redirect_to :appointment
	end

	private
	def appointment_params
		params.require(:appointment).permit(:datetime)
	end
	
end
