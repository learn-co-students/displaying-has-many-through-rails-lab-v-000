class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, :through => "appointments"

  def parse_time

    d = DateTime.new(self.appointment.appointment_datetime)
    d.strftime("%B %e, %Y at %H:%M")
  end
end
