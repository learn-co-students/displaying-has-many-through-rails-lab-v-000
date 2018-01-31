class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient


  def human_appointment_datetime
    appointment_datetime.strftime("%B %d, %Y at %H:%M")

  end

  def department
    doctor.department
  end

  def patient_name
    patient.name
  end

  def doctor_name
    doctor.name
  end

end
