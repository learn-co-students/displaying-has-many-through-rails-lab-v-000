class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def appointment_count
    self.appointments.size
  end

  def doctor_name=(name)
    self.doctor = Doctor.find_or_create_by(name: name)
  end

  def doctor_name
    self.doctor.name
  end

end
