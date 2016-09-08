class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def day_and_time
    t = self.appointment_datetime.to_datetime
    t.strftime(format='%B %d, %Y at %H:%M%P')
  end
end
