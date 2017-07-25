class Patient < ActiveRecord::Base
	has_many :appointments
	has_many :doctors, through: :appointments

	def make_readable
		self.strftime("%B %e, %Y at %H:%M %p")
	end

end
