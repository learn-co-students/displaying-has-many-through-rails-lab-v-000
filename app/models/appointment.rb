class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def patient_name
    self.patient.name
  end

  def doctor_name
    self.doctor.name
  end

  def display_date
    self.appointment_datetime.strftime("%B %e, %Y at %k:%M")
  end

end
