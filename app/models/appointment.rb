class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient


  def datetime_no_utc
    self.appointment_datetime.to_formatted_s(:long)
  end

  def formated_datetime
    string = datetime_no_utc.to_s
    arr = []
    arr = string.split(" ", )
    arr.join(" at ")
  end
end
