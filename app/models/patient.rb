class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def num_of_appts
    self.appointments.count
  end
end
