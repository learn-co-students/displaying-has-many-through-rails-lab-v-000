class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def readable_datetime
    self.appointment_datetime.strftime('%B %d, %Y at %H:%M')
  end

  def doctor_name
    self.doctor.name
  end
  
  def patient_name
    self.patient.name
  end
end
