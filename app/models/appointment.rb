class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def self.convert_datetime
    d = self
    d.strftime("%B%e, %Y at %I:%M")
  end
end
