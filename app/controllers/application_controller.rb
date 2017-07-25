class ApplicationController < ActionController::Base
	helper ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


	def make_readable
		self.strftime("%B %e, %Y at %H:%M %p")
	end
end
