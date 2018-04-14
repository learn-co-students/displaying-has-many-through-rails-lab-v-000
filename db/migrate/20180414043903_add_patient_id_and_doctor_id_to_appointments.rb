class AddPatientIdAndDoctorIdToAppointments < ActiveRecord::Migration
  def change
    change_table :appointments do |t|
      t.remove :date, :time
      t.integer :patient_id
      t.integer :doctor_id
    end
  end
end
