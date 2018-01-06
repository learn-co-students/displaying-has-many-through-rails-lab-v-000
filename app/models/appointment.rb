class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def parsed_date_time
    date = self.appointment_datetime.strftime('%B %d, %Y')
    hour = self.appointment_datetime.strftime('%H')
    minute = self.appointment_datetime.strftime('%M')
    "#{date} at #{hour}:#{minute}"
  end
end
