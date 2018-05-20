class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments
  accepts_nested_attributes_for :patients
end
