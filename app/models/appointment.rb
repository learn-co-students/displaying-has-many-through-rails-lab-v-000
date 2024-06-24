class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def date_nice_format
    self.appointment_datetime.to_formatted_s(:long)[0..-7] + " at" + self.appointment_datetime.to_formatted_s(:long)[-6..-1]
  end
end
