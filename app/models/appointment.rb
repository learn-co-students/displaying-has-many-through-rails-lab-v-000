require 'pry'

class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def date
    self.appointment_datetime.strftime("%B %d, %Y at %I:%M")
  end

end
