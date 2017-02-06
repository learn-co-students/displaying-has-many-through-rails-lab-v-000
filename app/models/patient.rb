class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def app_ct_to_s
    self.appointments.count.to_s
  end
end
