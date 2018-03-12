class Patient < ActiveRecord::Base
    has_many :doctors, through: :appointments
    has_many :appointments
    
    def patient_count
        self.patient.count
    end
end
