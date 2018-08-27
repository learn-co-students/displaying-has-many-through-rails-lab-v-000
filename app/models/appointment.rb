class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  # def readable_time
  #   time = self.appointment_datetime
  #   time.strftime("%B")
  # end
end


# January 12, 2016 at 3:00"
# DateTime.new(2016, 03, 15, 18, 00, 0)
# "2017-06-03T10:00:00+00:00"
# "2016-01-11T20:20:00+00:00"
