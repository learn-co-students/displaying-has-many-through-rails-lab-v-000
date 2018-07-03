class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def date_edited
    self.appointment_datetime.strftime('%B %d, %Y') + " at " + self.appointment_datetime.strftime('%H:%M')
  end
end
