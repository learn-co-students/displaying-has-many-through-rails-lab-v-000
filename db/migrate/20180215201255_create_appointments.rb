class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :patient_id
      t.integer :doctor_id
      t.datetime :appointment_datetime

      t.timestamps null: false
    end
  end
end
