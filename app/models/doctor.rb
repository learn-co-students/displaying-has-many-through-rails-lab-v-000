
class Doctor < ActiveRecord::Base

  has_many :appointments
  has_many :patients, through: :appointments

  def doctor_count
    self.doctors.size
  end



end
