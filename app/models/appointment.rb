class Appointment < ActiveRecord::Base
    belongs_to :patient
    belongs_to :doctor
    
    def appointment_count
        self.appointment.count
    end
end
