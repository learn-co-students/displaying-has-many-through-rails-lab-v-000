class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient
    
    def patient_name
        self.patient.name
    end
    def doctor_name
        self.doctor.name
    end
    def date_time_formatted
        self.appointment_datetime.strftime('%B %e, %Y at %k:%M')
    end
end
