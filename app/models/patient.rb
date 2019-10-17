class Patient < ApplicationRecord
  has_many :doctors, through: :appointments
  has_many :appointments

  def appt_count
    self.appointments.count
  end
end