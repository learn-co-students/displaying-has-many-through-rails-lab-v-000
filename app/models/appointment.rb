class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def human_time
        self.appointment_datetime.strftime('%B %-d, %Y at %k:%M')
    end
end
