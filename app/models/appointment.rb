class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  # t.datetime :appointment_datetime
  def time_format
    # time.strftime("Today is %A")
    self.appointment_datetime.strftime("%B %d, %Y at %k:%M")
    #"#{self.appointment_datetime.%B} #{self.appointment_datetime.%d}, #{self.appointment_datetime.%Y} at #{self.appointment_datetime.%k}:#{self.appointment_datetime.%M}"
  end
  
end
