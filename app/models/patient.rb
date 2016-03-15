class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  validates_presence_of :name, :age

  def appointments_count
    self.appointments.count
  end
end