class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def appointment_count
    self.appointments.count
  end
end
