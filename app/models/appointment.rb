class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def formatted_appointment_datetime
    # January 12, 2016 at 3:00
    appointment_datetime.strftime('%B %d, %Y at %H:%M')
  end
end
