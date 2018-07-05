class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def apps_sort_by_patient
    appointments.sort_by {|app| app.patient.name}
  end
end
