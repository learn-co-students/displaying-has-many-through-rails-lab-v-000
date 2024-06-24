class Patient < ApplicationRecord
  validates :name, :age, presence: true

  has_many :appointments
  has_many :doctors, through: :appointments
end
