class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def real_time
    d= self.appointment_datetime
    d.strftime("%B %e, %Y at %H:%M")
  end


end
