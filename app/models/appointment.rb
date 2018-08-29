class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def make_normal_time
   d = DateTime.parse(self.appointment_datetime.to_s)
   normal_time = d.strftime('%B %e') + ", " + d.strftime('%Y') + " at " + d.strftime('%H:%M %p')
  end
end
