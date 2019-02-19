class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def readable_date
    date_time = self.appointment_datetime.to_formatted_s(:long_ordinal)
    time = date_time.slice(-5..-1)
    date = date_time.slice(0..-7)
    new_date = date.delete("th")
    "#{new_date} at #{time}"
  end
end
