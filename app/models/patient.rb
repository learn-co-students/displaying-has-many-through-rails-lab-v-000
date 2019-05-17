class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments

  def count
    self.appointments.count
  end
end
