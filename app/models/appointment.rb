class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  #law of demeter/one dot rule
  def doctor_name
    self.doctor.name
  end

  #law of demeter/one dot rule
  def patient_name
    self.patient.name
  end

  #law of demeter/one dot rule
  def date_and_time
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end

  #law of demeter/one dot rule
  def patient_name
    self.patient.name
  end

end
