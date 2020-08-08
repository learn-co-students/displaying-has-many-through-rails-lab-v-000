class Patient < ApplicationRecord
    has_many :doctors, through: :appointments
    has_many :appointments
end
