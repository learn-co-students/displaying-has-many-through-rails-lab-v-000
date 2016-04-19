class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  #law of demeter/one dot rule
  def appointment_count
    self.appointments.count
  end

end
