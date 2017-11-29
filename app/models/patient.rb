class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def no_appointments?
    self.appointments.empty?
  end
end
