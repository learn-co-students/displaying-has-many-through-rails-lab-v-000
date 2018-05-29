class PatientsController < ApplicationController
    belongs_to :doctor
    has_many :appointments
    has_many :appointments, through: :patient_appointments
end
