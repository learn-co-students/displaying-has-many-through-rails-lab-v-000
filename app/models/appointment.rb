class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def readable_time
    appointment_datetime.to_s(:appt_time)
  end

  def patient_name
    patient.name
  end

  def doctor_name
    doctor.name
  end
end
