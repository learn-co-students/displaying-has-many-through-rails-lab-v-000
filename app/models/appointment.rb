class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def to_readable
    readable_datetime = "#{self.appointment_datetime.strftime("%B")} #{self.appointment_datetime.day}, #{self.appointment_datetime.year} at #{self.appointment_datetime.hour}:#{self.appointment_datetime.min}"
  end
end
