class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def convert_time
     self.appointment_datetime.to_datetime.strftime(format='%B %d, %Y at %H:%M%P')
  end

end
