class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime, null: false 
      t.integer :patient_id
      t.integer :doctor_id

      t.timestamps null: false
    end
  end
end
