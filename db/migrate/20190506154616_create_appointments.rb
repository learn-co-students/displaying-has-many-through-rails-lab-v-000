class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.integer :patient_id
      t.string :doctor
      t.integer :doctor_id
      t.datetime :appointment_datetime

      t.timestamps
    end
  end
end
