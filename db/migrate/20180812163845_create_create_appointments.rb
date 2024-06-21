class CreateCreateAppointments < ActiveRecord::Migration
  def change
    create_table :create_appointments do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.datetime :appointment_datetime

      t.timestamps null: false
    end
  end
end
