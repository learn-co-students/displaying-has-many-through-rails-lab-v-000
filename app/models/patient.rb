class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments

  def total_appointments
    self.appointments.count
  end
end
