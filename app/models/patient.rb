class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def appointment_dates_and_times
      self.appointments.map do |appointment|
        appointment.appointment_datetime
      end
    end

    def doctor_name
      self.doctor.name
    end
end
