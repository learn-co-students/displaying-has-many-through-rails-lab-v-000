class AppointmentsController < ApplicationController
    belongs_to :doctor
    belongs_to :patient
    has_many :patient_appointments  
end
