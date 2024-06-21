class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def patient_name
    patient.name
  end

  def time_date
    appointment_datetime.strftime("%A, %I:%M %p on %B %d, %Y")
  end
end
