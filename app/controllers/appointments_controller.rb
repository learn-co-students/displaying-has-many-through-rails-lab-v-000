class AppointmentsController < ApplicationController
	def show
		@appointment = Appointment.find(params[:id])
		@doctor = Doctor.find(@appointment.doctor.id)
		@patient = Patient.find(@appointment.patient.id)
	end
end