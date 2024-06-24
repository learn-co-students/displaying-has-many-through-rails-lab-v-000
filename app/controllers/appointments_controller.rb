class AppointmentsController < ApplicationController

	before_action :set_appointment, only: [:show, :edit, :update, :destroy]

	def index
		@appointments = Appointment.all
	end

	def show
	end

	def new
		@appointment = Appointment.new
	end

	def edit
	end 

	def create
		@appointment = Appointment.new(appointment_params)
		if @appointment.save  
			redirect_to @appointment, notice: 'Appointment was successfully created'
		else
			render :new
		end
	end

	def update
		if @appointment.update(appointment_params)
			redirect_to @appointment, notice: 'Appointment was successfully updated'
		else
			render :edit
		end
	end

	def destroy
		@appointment.destroy
		redirect_to appointments_url
	end

	private

	def set_appointment
		@appointment = Appointment.find(params[:id])
	end

	def appointment_params
		params.require(:appointment).permit(:appointment_datetime)
	end
end