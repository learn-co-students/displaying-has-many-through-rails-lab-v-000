
class Appointment < ActiveRecord::Base

  belongs_to :doctor
  belongs_to :patient

  def count
    self.appointments.size
  end

  def date_time
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end


end
