class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def day
    self.appointment_datetime.strftime('%B %d, %Y')
  end

  def hour
    self.appointment_datetime.strftime('%H:%M')
  end



end
