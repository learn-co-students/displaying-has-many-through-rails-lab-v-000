class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable_time
    self.appointment_datetime.strftime("%B %e, %Y at %H:%M")
  end

  def patient_name
    self.patient.name
  end

  def doctor_name
    self.doctor.name
  end
end
