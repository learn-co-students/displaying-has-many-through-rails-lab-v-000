class Doctor < ActiveRecord::Base
  has_many :appointments 
  has_many :patients, through: :appointments 

  def appointment_time
    self.appointment.appointment_datetime
  end
end
