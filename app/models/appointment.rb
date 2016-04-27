class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def display_time
    self.appointment_datetime.strftime("%B %-d, %Y at %k:%M")

  end
end
