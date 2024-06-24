class Appointment < ActiveRecord::Base
    belongs_to :doctor
    belongs_to :patient

    def doctor_name
        doctor.name
    end

    def patient_name
        patient.name
    end

end
