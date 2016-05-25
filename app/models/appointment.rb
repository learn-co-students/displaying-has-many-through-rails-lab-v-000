class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def in_readable_form
    appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
