class DoctorsController < ApplicationController
    has_many :patients
    has_many :appointments
    has_many :appointments, through: :patient_appointments
end
