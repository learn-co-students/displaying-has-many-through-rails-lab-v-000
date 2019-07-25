class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  
  def datetime
    byebug
    self.date.to_s + "at" + self.time.to_s
  end

end
