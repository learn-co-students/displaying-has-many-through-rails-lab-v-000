class Doctor < ApplicationRecord
  validates :name, :department, presence: true

  has_many :appointments
  has_many :patients, through: :appointments
end
