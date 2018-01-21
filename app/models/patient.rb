class Patient < ActiveRecord::Base

  has_many :doctors, through: :appointments
  has_many :appointments

  def appointments_count
    self.appointments.count
  end



end
