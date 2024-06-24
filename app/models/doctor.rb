class Doctor < ActiveRecord::Base
  has_many :patients, through: :appointments
  has_many :appointments

  def patient_count
    self.patients.size
  end

  

end
