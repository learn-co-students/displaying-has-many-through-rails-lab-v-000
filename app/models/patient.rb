class Patient < ActiveRecord::Base
  has_many :doctors, through: :appointments
  has_many :appointments

  # accepts_nested_attributes_for :appointments

end
