class AppointmentsController < ApplicationController
	before_action :set_appointment!, only: [:show, :edit, :update, :destroy]
	
	def show
	end
	
	private
	def set_appointment!
		@appointment = Appointment.find(params[:id])
	end
end
