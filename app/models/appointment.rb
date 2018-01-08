class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def doctor_name
    Doctor.find(self.doctor_id).name
  end

  def patient_name
    Patient.find(self.patient_id).name
  end
end
