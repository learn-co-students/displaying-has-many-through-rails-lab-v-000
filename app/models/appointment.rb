class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  # def fulldate
  #   appointment_datetime.strftime("%B %e, %Y at %H:%M %p")
  # end
end
