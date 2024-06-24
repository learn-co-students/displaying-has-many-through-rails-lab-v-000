class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :doctors, through: :appointments

    def num_appointments
        self.appointments.size
    end

end
