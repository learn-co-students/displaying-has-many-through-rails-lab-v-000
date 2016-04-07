class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def print_datetime
    appointment_datetime.strftime('%B %d, %Y at %H:%M')
  end
end
