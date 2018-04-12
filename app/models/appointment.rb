class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def date
    self.appointment_datetime.strftime("%B %d, %Y")
  end

  def time
    self.appointment_datetime.strftime("%T")
  end
end
