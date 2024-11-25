class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def show_date_time
    dt = self.appointment_datetime
    "#{dt.strftime("%B")} #{dt.day}, #{dt.year} at #{dt.strftime("%H:%M")}"
    #binding.pry
  end
end
