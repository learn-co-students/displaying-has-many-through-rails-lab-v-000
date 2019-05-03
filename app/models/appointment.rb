class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def format_time
    appointment_datetime.strftime("%B %d, %Y at %H:%M %P")
  end


end
