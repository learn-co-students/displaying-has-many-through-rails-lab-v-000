class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def patient_name
    patient.name
  end

  def doctor_name
    doctor.name
  end

  def readable_time
    appointment_datetime.strftime("%B %e, %Y at %H:%M")
  end
end
