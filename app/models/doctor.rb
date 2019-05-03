class Doctor < ActiveRecord::Base
    has_many :patients, through: :appointments
    has_many :appointments
    accepts_nested_attributes_for :appointments

    def appointment_attributes=(appointment)
      self.appointment = Appointment.find_or_create_by(appointment_datetime: appointment.appointment_datetime)
      self.appointment.update(appointment)
end
end
