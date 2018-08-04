class Appointment < ActiveRecord::Base

  belongs_to :patient
  belongs_to :doctor

  def num_of_appointments
    self.appointments.count
  end
end
