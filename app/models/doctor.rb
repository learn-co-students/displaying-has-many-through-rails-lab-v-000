class Doctor < ActiveRecord::Base
  has_many :patients, through: :appointments
  has_many :appointments
end
