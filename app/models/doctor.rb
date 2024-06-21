class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def patient_name
    self.patient.name
  end

  def patient_count
    self.patient.count
  end

  def readable_datetime
    self.appointment_datetime.strftime('%B %d, %Y at %k:%M')
  end
  
end
