class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments


  def human_appointment_datetime
    appointment_datetime.strftime("%B %d, %Y at %H:%M")

  end

  def department
    doctor.department
  end
end
