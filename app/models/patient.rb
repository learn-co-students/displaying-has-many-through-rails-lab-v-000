class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :doctors, through: :appointments

    def num_appointments
        Appointment.where(patient_id: self.id).count
    end
end
