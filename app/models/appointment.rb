class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def datetime_convert
    self.appointment_datetime.strftime(%Y%m%dT%H%M%S%z)
  end
end
