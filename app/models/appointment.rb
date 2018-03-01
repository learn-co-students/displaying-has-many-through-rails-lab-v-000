class Appointment < ActiveRecord::Base
    belongs_to  :doctor
    belongs_to :patient

    
    def format_appointment_datetime
        self.appointment_datetime.strftime('%B %d, %Y at %H:%M')
        # Time.parse(self.appointment_datetime).strftime('%B %d, %Y at %H:%M')
    end

end
