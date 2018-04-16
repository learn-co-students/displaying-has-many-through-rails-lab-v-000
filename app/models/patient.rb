class Patient < ActiveRecord::Base
  has_many :doctors, through: :appointments
end
