class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def datetime_convert
    self.appointment_datetime.to_s
  end
end
