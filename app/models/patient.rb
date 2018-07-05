class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def name_appt
    "Name: #{name} Number of Appointments: #{appointments.size}"
  end
end
