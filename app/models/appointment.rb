class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def patient_name
    self.patient.name
  end

  def date_and_time
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end

  def doctor_name # This can probably be refactored/combined with #patient_name.
    self.doctor.name
  end

  def name_of(person)
    # self.send(person).name
    person.name # This may be better, since it clearly identifies what the person is.
  end
end
