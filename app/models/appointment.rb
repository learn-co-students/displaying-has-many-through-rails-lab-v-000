require 'date'

class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def parse
    apt = ""
    apt << Date::MONTHNAMES[self.appointment_datetime.to_s[5..6].to_i] + " "
    apt << self.appointment_datetime.to_s[8..9] + ", "
    apt << self.appointment_datetime.to_s[0..3] + " at"
    apt << self.appointment_datetime.to_s[10..15]
    apt
  end
end
