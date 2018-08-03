class Patient < ActiveRecord::Base
  has_many :doctors, through: :appointments
  has_many :appointments

  def number_of_appointments
    self.appointments.count    
  end

end
