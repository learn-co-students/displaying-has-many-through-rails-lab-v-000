class AppointmentsController < ApplicationController
    belongs_to :doctor
    belongs_to :patient  
end
