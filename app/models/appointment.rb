class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def patient_name
    self.patient.name
  end

  def doctor_name
    self.doctor.name
  end

  def date_and_time
    date = self.appointment_datetime
    date.strftime("%B %e, %Y at %H:%M")
  end


end
