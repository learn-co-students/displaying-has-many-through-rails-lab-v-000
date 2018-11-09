class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def format_date
    "#{self.appointment_datetime.strftime("%B")} #{self.appointment_datetime.strftime("%d")},
    #{self.appointment_datetime.strftime("%Y")} at #{self.appointment_datetime.strftime("%H:%M")}"
  end
end
