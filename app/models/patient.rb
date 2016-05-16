class Patient < ActiveRecord::Base
  has_many  :appointments
  has_many  :doctors, through: :appointments

  def doctor_name
    self.doctor.try(:name)
  end

end
