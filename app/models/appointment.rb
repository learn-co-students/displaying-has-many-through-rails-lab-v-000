class Appointment < ActiveRecord::Base
  belongs_to  :doctor
  belongs_to  :patient

  def doctor_name
    self.doctor.try(:name)
  end

  def patient_name
    self.patient.try(:name)
  end

  def apt_time
    self.appointment_datetime.strftime("%A, %B %d, %Y at %H:%M")
  end
end
