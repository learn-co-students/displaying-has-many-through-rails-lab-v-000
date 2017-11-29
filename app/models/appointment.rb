class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def patient_name
    self.patient.try(:name)
  end

  def doctor_name
    self.doctor.try(:name)
  end

  def appt_time
    self.appointment_datetime.try(:strftime, "%B %d, %Y at %H:%M")
  end
end
