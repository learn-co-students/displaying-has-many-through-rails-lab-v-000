class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def total_appointments
    "Name: #{self.name} Number of Appointments: #{self.appointments.size}"
  end

  def show
  end
end
