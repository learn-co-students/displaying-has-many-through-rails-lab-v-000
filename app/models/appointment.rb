require 'date'
require 'time'

class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def appointment_datetime_to_s
    self.appointment_datetime.strftime("%B %e,%Y at %k:%M")
  end

end
