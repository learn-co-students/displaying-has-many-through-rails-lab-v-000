class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

    def doctor_name
      self.doctor.name
    end

    def appointment_count
      self.appointments.count
    end

    def readable_datetime
      self.appointment_datetime.strftime('%B %d, %Y at %k:%M')
    end

end
