class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  validates_presence_of :name, :department

  def patients_count
    self.patients.count
  end
end