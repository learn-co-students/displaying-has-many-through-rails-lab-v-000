class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  accepts_nested_attributes_for :doctor
  accepts_nested_attributes_for :patient
end
