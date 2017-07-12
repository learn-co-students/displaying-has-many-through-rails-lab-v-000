class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient

    def doctor_name
        if doctor
            doctor.name
        end
    end

    def patient_name
        if patient
            patient.name
        end
    end
end
