class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments
  validates :name, uniqueness: true, presence: :true
end
