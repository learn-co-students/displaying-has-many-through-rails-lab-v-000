class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def appointment_datetime
        appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
