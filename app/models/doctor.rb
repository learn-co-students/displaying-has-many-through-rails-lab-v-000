class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments

    def appointments=(appointments)
        self.appointments = Appointment.find(doctor_id: doctor.id)
    end

    def appointments
        self.appointments ? self.appointments : nil
    end
end
