class Doctor < ActiveRecord::Base
  has_many :patients
  has_many :appontments, through: :patients 
end
