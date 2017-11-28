# This file is used by Rack-based servers to start the application.
config.web_console.development_only = false
require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
