class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def count_patients
    self.patients.count
  end
end
