class Patient < ActiveRecord::Base
  has_many :appointments,
    :foreign_key => "id"
  has_many :doctors, through: :appointments
end
