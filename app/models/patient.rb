class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :dcotors, through: :appointments
end
