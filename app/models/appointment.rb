class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def doctor_name
    self.doctor.name
  end

  def patient_name
    self.patient.name
  end

  def date_and_time
    appointment_datetime.strftime("%B %d, %Y at %k:%M")
  end
end
