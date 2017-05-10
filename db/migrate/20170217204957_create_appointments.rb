class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.datetime :appointment_datetime, null: false
    end
  end
end
