class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def patient_name
    self.patient.name
  end

  def doctor_name
    self.doctor.name
  end

  def friendly_datetime
    self.appointment_datetime.strftime("%B %e, %Y at %H:%M")
  end
end
