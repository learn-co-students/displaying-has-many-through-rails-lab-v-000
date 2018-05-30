class Doctor < ActiveRecord::Base
    has_many :patients
    has_many :appointments
    # has_many :patient_appointments
    has_many :patients, through: :appointments
    # has_many :patients, through: :patient_appointments
    # has_many :patients, through: :patient_appointments

        # why not also belongs_to :patient or a diff activerecord method

end
