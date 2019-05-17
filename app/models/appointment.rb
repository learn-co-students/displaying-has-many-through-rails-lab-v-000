class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def patient_name
    self.patient.name
  end

  def doctor_name
    self.doctor.name
  end

  def datetime_beautified
    # dt = self.appointment_datetime
    # "#{Date::MONTHNAMES[dt.month]} #{dt.day}, #{dt.year} at #{dt.hour}:#{dt.min}"
    # This is a better way for the datetime
    self.appointment_datetime.strftime("%B %-d, %Y at %R")
  end

end
