class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  validates_presence_of :appointment_datetime, :doctor_id, :patient_id

  def datetime
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end

  def patient_name
    self.patient.name
  end

  def doctor_name
    self.doctor.name
  end
end