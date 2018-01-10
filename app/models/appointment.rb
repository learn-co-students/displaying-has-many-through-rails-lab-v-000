require 'pry'
class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def doctor_name=(name)
    self.doctor = Doctor.find_or_create_by(name: name)
  end

  def doctor_name
    self.doctor.name
  end

  def patient_name=(name)
    self.patient = Patient.find_or_create_by(name: name)
  end

  def patient_name
    self.patient.name
  end
end
