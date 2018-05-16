class Doctor < ActiveRecord::Base
  has_many :patients, through: :appointments
end
