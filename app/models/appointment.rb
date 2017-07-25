class Appointment < ActiveRecord::Base 
	belongs_to :doctor
	belongs_to :patient

	def make_readable
		self.strftime("%B %e, %Y at %H:%M %p")
	end
end
