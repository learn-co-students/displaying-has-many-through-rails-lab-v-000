class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  
  def appointment_times
    self.appointments.sort_by { |appointment| appointment.appointment_datetime }
  end
  
end
