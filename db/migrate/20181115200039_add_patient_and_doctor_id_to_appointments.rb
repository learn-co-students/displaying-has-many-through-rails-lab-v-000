class AddPatientAndDoctorIdToAppointments < ActiveRecord::Migration
  def change
    change_table :appointments do |t|
      t.belongs_to :doctor
      t.belongs_to :patient
    end
  end
end
