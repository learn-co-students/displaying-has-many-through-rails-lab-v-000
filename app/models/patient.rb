class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :doctors, through: :appointments 

    def appointment_count 
        self.appointments.count 
    end 
end
# .strftime("%B %d, %Y at %k:%M")