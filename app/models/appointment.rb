class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def date
    self.appointment_datetime.strftime('%B %d, %Y') #January 11, 2016
  end

  def datetime
    self.appointment_datetime.strftime('%B %d, %Y at %H:%M')  #January 11, 2016 at 20:20
  end

  def patient_name
    self.patient.name
  end

  def doctor_name
    self.doctor.name
  end

end
