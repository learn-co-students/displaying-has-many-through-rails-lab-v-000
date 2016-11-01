class Patient < ActiveRecord::Base
  has_many :appoinments
  has_many :doctors, through: :appoinments
end
