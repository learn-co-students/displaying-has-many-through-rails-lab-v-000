class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def date_to_s
    self.appointment_datetime.strftime("%B %e, %Y at %H:%M %p")
  end

  def patient_name
    self.patient.name
  end

  def doctor_name
    self.doctor.name
  end

end
