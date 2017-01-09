class Doctor < ActiveRecord::Base
  has_many :appointments,
    :foreign_key => "id"
  has_many :patients, through: :appointments
end
