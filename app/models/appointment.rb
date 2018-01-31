class Appointment < ActiveRecord::Base

  belongs_to :doctor
  belongs_to :patient

  def converted_date_time
    t = self.appointment_datetime
    month = t.strftime('%B') 
    day = t.strftime("%d")
    year = t.strftime('%Y')
    hour = t.strftime("%H")
    minute = t.strftime("%M")
    convert = "#{month} #{day}, #{year} at #{hour}:#{minute}"
  end

end
