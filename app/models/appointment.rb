class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def time_to_s
    appointment_datetime.strftime("%B %e, %Y at %H:%M")
  end
  
end
