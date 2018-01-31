class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def doctor_name=(name)
    doctor = Doctor.find_or_create_by(name: name)
    self.doctor = doctor
  end

  def doctor_name
    self.try(:doctor).try(:name)
  end

  def patient_name=(name)
    patient = Patient.find_or_create_by(name: name)
    self.patient = patient
  end

  def patient_name
    self.try(:patient).try(:name)
  end
end
