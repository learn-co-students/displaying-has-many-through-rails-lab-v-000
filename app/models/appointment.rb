class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable_datetime
    self.appointment_datetime.strftime("%B %e, %Y at %k:%M") #=>"January 12, 2016 at 3:00"
  end
  
end
