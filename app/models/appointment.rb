class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable_datetime
    appointment_datetime.strftime("%B %d, %Y at %X")
  end
end
