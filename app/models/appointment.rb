class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  validates :appointment_datetime, :patient_id, :doctor_id, presence: true

  def doctor_name
    self.doctor.name
  end

  def patient_name
    self.patient.name
  end

  def friendly_datetime
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
