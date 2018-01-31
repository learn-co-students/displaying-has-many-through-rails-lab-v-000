class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def patient_appointment_count
    self.appointments.count
  end
end
