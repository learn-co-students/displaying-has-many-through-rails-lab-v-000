class Patient < ActiveRecord::Base

  has_many :appointments
  has_many :doctors, through: :appointments

  # def patient_appointments
  #   self.appointments.each do |appointment|
  #     appointment.datetime
  #   end
  # end

  
end
