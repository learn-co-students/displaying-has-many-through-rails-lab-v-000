class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def patient_count
    ActionController::Base.helpers.pluralize(self.patients.length, "patients")
  end

end
