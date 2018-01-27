class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  validates :name, :age, presence: true
end
