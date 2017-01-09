class Doctor < ActiveRecord::Base
  has_many :appointments,
    :foreign_key => true
  has_many :patients, through: :appointments
end
