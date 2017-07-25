class Doctor < ActiveRecord::Base
	has_many :appointments
	has_many :patients, through: :appointments

	def make_readable
		self.strftime("%B %e, %Y at %H:%M %p")
	end
end
