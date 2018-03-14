class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def right_time
 		appointment_datetime.strftime("%B %e, %Y at %H:%M")
 	end

end
