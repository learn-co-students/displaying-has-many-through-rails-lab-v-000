class Doctor < ActiveRecord::Base
  has_many :patients, through: :appointments
  has_many :appointments

  # accepts_nested_attributes_for :appointments

#
#   def appointment_appointment_datetime=(appointment_datetime)
#   self.appointment = Category.find_or_create_by(appointment_datetime: appointment_datetime)
# end
#
# def appointment_appointment_datetime
#    self.appointment ? self.appointment.appointment_datetime : nil
# end

end
