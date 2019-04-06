class Patient < ApplicationRecord

  has_many :appointments
  has_many :doctors, through: :appointments

  def appointment_count
    @appointments = Appointment.count

  end
end
