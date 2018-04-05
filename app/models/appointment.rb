# Illustration available here: https://i.imgur.com/YIUhixA.png
class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
end
