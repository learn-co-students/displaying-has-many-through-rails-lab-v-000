class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def patient_name
    self.patient.name
  end

  def doctor_name
    self.doctor.name
  end

  def date
    month_day = self.appointment_datetime.strftime('%B %d')
    year = self.appointment_datetime.strftime('%Y')
    hour = self.appointment_datetime.strftime('%H')
    minute = self.appointment_datetime.strftime('%M')
    return "#{month_day}, #{year} at #{hour}:#{minute}"
  end
end
