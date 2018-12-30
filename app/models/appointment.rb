class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def appointment_datetime=(datetime)

  end

  def appointment_datetime
  end
end
