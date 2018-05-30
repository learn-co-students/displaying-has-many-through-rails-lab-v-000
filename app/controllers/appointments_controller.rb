require 'pry'

class AppointmentsController < ApplicationController

	def show
		@appointment = Appointment.find(params[:id])
		@date = convert_time(@appointment.appointment_datetime)
		@time = military_time(@appointment.appointment_datetime)

	end



	private 

		def convert_time(appointment_datetime)

			time = appointment_datetime.to_s

			year = time.slice(0,4).to_i

			month = time.slice(5,2).to_i

			day = time.slice(8,2).to_i

			formated = Date.new(year, month, day)

			formated.to_formatted_s(:long_ordinal)

		end

		def military_time(appointment_datetime)

			time = appointment_datetime.to_s

			hour = time.slice(11,5)

			if hour.slice(0,2).to_i > 12
			    hours = hour.to_i - 12
			    hours.to_s 
			    minutes = hour.slice(3,2).to_s
			    "#{hours}:#{minutes}"
			else
			    hours = hour.to_i 
			    hours.to_s 
			    minutes = hour.slice(3,2).to_s
			    "#{hours}:#{minutes}"
			 end
		end
end


