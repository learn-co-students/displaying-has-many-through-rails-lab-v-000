class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  #accepts_nested_attributes_for :doctors
  #accepts_nested_attributes_for :patients
end
