class Doctor < ApplicationRecord
  has_many :patients, through: :appointments
  has_many :appointments

  def patient_count
    self.patients.count
  end
end