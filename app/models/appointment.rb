class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def human_readable_time
     self.appointment_datetime.to_formatted_s(:long).gsub(self.appointment_datetime.to_formatted_s(:time),"at") +" "+ self.appointment_datetime.to_formatted_s(:time)
  end
end
