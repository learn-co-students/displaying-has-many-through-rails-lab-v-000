class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def appointments=(appointments)
        self.appointments = Appointment.find(patient_id: patient.id)
    end

    
end
