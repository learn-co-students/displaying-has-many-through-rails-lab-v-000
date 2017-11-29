class Doctor < ActiveRecord::Base
	belongs_to :patient
    has_many :appointments
    has_many :patients, through: :appointments
end
