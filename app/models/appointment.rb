class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def readable_date
    self.appointment_datetime.strftime('%B %d, %Y') + " at " + self.appointment_datetime.strftime('%H:%M')
  end
end
