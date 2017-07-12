class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def formatted_datetime
    array = []
    array = self.appointment_datetime.to_formatted_s(:long_ordinal).split(" ").insert(3, "at")
    array[1] = "#{array[1][0..1]},"
    string = array.join(" ")
  end
end
