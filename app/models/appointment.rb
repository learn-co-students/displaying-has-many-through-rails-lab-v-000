class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def display_appt
    self.appointment_datetime.strftime("%B %-d, %Y at %k:%M")
  end
end
