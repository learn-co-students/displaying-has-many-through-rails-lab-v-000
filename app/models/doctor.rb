class Doctor < ActiveRecord::Base
  has_many appointments
  has_many patiens, through: :appointments
end
