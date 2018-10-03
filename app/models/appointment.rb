class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def display_for_humans
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end

end
