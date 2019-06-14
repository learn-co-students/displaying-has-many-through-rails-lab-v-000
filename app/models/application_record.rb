class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def readable_time
    "#{self.appointment_datetime.strftime("%B %d, %Y at %H:%M")}"
  end
end
