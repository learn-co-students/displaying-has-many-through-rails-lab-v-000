class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def doctor_name=(doctor_name)
        self.doctor = Doctor.find_by(name: doctor_name)
    end

    def doctor_name
        self.doctor ? self.doctor.name : nil
    end

    def patient_name=(patient_name)
        self.patient = Patient.find_by(name: patient_name)
    end

    def patient_name
        self.patient ? self.patient.name : nil
    end

    def appointment_formatted_date
        self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
    end
end
