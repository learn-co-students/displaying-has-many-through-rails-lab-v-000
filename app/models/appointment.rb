class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def doctor_name
    self.try(:doctor).try(:name)
  end

  def patient_name
    self.try(:patient).try(:name)
  end

  def hr_time
    appointment_datetime.strftime("%B %-d, %Y at %k:%M")
  end

end
