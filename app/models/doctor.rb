class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments


  # def parse_doctor_app_times
  #   date = self.appointments.appointment_datetime
  #   date.strftime("%B %W, %Y at %H:%M")
  # end

end
