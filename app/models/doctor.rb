class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def num_of_appts
    self.appointments.count
  end
end
