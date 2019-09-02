class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def patient_name
    self.patient.name
  end

  def doctor_name
    self.doctor.name
  end

  def formatted_time
    self.appointment_datetime.strftime('%B %d, %Y at %k:%M')
  end
end
