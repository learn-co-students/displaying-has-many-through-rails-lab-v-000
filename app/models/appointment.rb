class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient


  def doctor_name
    self.doctor.name
  end

  def patient_name
    self.patient.name
  end

  def readable_datetime
    date = self.appointment_datetime
    date.strftime("%B %-d, %Y at %k:%M")
  end
  #
  # def day
  #   date = self.appointment_datetime
  #   date[8..9]
  # end
  #
  # def year
  #   date = self.appointment_datetime
  #   date[0..3]
  # end
  #
  # def month
  #   month_name_arr = %w(January February March April May June July August September October November December)
  #
  #   date = self.appointment_datetime
  #   month_num = date[5..6].to_i
  #
  #   month_name_arr[month_num - 1]
  #
  # end
  #
  # def time
  #   date = self.appointment_datetime
  #   time_section = date[11..15]
  #   mil_hour = time_section[0..1]
  #   minute = time_section[3..4]
  #
  #   # if mil_hour > 12
  #   #   civ_hour = mil_hour-12
  #   # elsif mil_hour == 0
  #   #   civ_hour = 12
  #   # else
  #   #   civ_hour = mil_hour
  #   # end
  #
  #   "#{mil_hour}:#{minute}"
  #
  # end

end
