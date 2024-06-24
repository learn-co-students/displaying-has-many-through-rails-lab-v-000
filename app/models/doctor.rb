class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  validates :name, presence: true
  validates :department, presence: true
end
