class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def display_time
    appointment_datetime.strftime(format='%B %-d, %Y at %R')
  end
end
