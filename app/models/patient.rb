class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def patient_name
    patient.name
  end

  def time_date
    appointment_datetime.strftime("%A, %I:%M %p on %B %d, %Y")
  end
end
