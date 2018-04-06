class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments
  def date_readable
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
