class AddDoctorAndPatientIDsToAppointments < ActiveRecord::Migration
  def change
    add_foreign_key :doctors, :appointments
    add_foreign_key :patients, :appointments
  end
end
