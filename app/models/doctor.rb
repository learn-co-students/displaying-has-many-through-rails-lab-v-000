class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def patient_count
    self.patients.size
  end

  def patient_name=(name)
    self.patient = Patient.find_or_create_by(name: name)
  end

  def patient_name
    self.patient.name
  end

end
