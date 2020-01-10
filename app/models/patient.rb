class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    accepts_nested_attributes_for :appointments
end
