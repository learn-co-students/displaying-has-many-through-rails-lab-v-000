class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def patient_name
    self.patient.name
  end

  def readable_datetime
    self.appointment_datetime.strftime("%B %e, %Y at %l:%M")
  end
end
