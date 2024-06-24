class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  validates :appointment_datetime, presence: true
end
