# Illustration available here: https://i.imgur.com/YIUhixA.png
class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments
end
