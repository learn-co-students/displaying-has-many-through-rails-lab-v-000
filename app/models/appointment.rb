class Appointment < ActiveRecord::Base

  belongs_to :doctor
  belongs_to :patient

  def appt_doctor_name
    self.doctor.name
  end

  def appt_patient_name
    self.patient.name
  end

  def appt_time
    self.appointment_datetime.strftime('%B %-d, %Y at %H:%M')
  end
  
end
