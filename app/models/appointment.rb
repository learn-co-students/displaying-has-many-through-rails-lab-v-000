class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def human_readble_date_time
    self.appointment_datetime.to_formatted_s(:long).insert(-7, " at")
  end
end