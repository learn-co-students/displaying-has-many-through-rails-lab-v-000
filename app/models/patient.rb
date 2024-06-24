class Patient < ActiveRecord::Base
  has_many :doctors, through: :appointments
  has_many :appointments

  validates :name, presence: true
  validates :age, presence: true

end
