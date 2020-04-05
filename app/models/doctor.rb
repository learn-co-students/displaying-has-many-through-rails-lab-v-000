class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def appointment_times
    self.appointments.sort_by { |a| a.appointment_datetime }
  end
end
