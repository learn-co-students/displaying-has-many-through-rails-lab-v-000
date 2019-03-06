class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def time
    Time.parse(self.appointment_datetime.to_s).strftime "%B %d, %Y at %H:%M"
  end
end
