class CreatePatientAppointments < ActiveRecord::Migration
  def change
    create_table :patient_appointments do |t|
      t.integer :patient_id
      t.integer :doctor_id 
      t.timestamps null: false
    end
  end
end
