class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable_date
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M %P")
  end

end
