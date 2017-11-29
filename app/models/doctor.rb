class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def no_appointments?
    self.appointments.empty?
  end

  def patient_count
    self.patients.uniq.count
  end
end
