class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient

    def parse_appointment_datetime
        Date.parse(self.appointment_datetime).strftime("%B %d, %Y at 20:20")
    end

end
