class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def date_string
    self.appointment_datetime.strftime('%B %e, %Y at %l:%M')
  end
end
