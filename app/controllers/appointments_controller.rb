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
		params.require(:appointment).permit(:patient_id, patient_attributes: [:name, :age], :doctor_id, doctor_attributes: [:name, :department], :appointment_datetime [:day, :date, :hour, :min])
	end
		
end
