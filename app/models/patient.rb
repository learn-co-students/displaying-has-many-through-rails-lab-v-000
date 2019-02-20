class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

   def number_of_appointments
    self.appointments.count.to_s
   end
end
