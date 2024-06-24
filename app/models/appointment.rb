class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient

    def patient_name
        self.patient.name
    end

    def doctor_name
        self.doctor.name
    end

    def date_and_time
        # byebug
        #January 12, 2016 at 3:00
        d = self.appointment_datetime
        d.strftime("%B %e, %Y at %H:%M")
    end
end
