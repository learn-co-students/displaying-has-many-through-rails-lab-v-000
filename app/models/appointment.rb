class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def patient_name
    self.patient.name
  end
end
