class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient

    def appt_time
        self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
    end
end