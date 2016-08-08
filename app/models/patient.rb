class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def count_appointments
    self.appointments.count
  end

end
