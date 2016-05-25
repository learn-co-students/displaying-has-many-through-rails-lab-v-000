class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :doctor_id, :patient_id
      t.datetime :appointment_datetime
      t.timestamps null: false
    end
  end
end
