class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def human_readable_datetime
    self.appointment_datetime.to_formatted_s(:long).insert(-7, " at")
  end
end
