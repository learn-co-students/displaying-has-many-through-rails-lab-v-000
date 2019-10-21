class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def formatted_time
    time = appointment_datetime
    "#{time.strftime("%B %-d, %Y")} at #{time.strftime("%k:%M")}"
  end

  def doctor_name
    doctor.name
  end

  def patient_name
    patient.name
  end
end
