class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def formatted_datetime
    array = []
    array = self.appointment_datetime.to_formatted_s(:long_ordinal).split(" ").insert(3, "at")
    array[1] = "#{array[1][0..1]},"
    string = array.join(" ")
    # Mon, 11 Jan 2016 20:20:00 UTC +00:00
    # January 11, 2016 at 20:20
  end
end
