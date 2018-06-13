class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

# Format the Date/Time to human readable format (i.e. "June 12, 2018 at 16:30")
  def date_time_formatted
    self.appointment_datetime.strftime("%B %d, %G at %R")
  end

end
