class Patient < ActiveRecord::Base
  has_many :appointments,
    :foreign_key => true
  has_many :doctors, through: :appointments
end
