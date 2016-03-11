class Patient < ActiveRecord::Base
  has_many :doctors
  has_many :appointments
  has_many :doctors, through: :appointments
end
