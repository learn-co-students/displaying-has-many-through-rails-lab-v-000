class Doctor < ActiveRecord::Base
  has_many :patients
  has_many :appoinments, through: :patients
end
