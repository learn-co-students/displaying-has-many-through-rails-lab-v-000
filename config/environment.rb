# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Time::DATE_FORMATS[:app_date] = "appointment on %B %d, %Y at %H:%M %p"
