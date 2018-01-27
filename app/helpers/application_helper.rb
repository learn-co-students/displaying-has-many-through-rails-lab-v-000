module ApplicationHelper
	
	def make_readable
		self.strftime("%B %e, %Y at %H:%M %p")
	end
end
