class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  # Patients have a name and an age
end
