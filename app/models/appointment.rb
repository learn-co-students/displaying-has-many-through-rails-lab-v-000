class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def datetime
        @datetime = self.appointment_datetime.strftime("%B %d, %Y %H:%M")
    end

    def date
        @datetime = self.appointment_datetime.strftime("%B %d, %Y")
    end

    def time
        @datetime = self.appointment_datetime.strftime("%H:%M")
    end
end
