class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable_datetime
    readable = self.appointment_datetime.to_formatted_s(:long_ordinal)
    readable = readable.rpartition(' ')
    readable[1] = "at"
    readable.join(" ").gsub('th', '')
  end

end
