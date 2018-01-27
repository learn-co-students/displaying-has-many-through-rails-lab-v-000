class Doctor < ActiveRecord::Base
  belongs_to :patient
  has_many :appointments
  has_many :patients, through: :appointments


  # def doctor_appointment=(doctor)
  #   self.doctor = Doctor.find_or_create_by(name: doctor.name)
  #   self.doctor.update(doctor)
  # end
end
