class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def display_time
    appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end

  def patient_name
    patient.name
  end

  def doctor_name
    doctor.name
  end
end
