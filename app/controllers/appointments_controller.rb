class AppointmentsController < ApplicationController


	def show 
		@appointment = Appointment.find(params[:id])
	end

	def index
    raise ActionController::RoutingError.new('Thou shall not pass!!!')
  end

	# def index 
	# 	raise Exception.new('There is no index of appointments')
	# end

	

end
