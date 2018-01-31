class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def appointment_count
    "Name: #{self.name} Number of Appointments: #{self.appointments.count}"
  end

  def self.appointment_time(appointment_date)
    "#{appointment_date.strftime("%B %e, %Y")} at #{appointment_date.strftime("%R")}"
  end
end
