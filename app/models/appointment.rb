class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def show_datetime
    date = self.appointment_datetime
    date.strftime("%B %e") + ", " + date.strftime("%Y") + " at " + date.strftime("%R")
  end
end
