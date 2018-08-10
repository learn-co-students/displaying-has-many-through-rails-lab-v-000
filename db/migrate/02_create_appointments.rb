class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :patient_id
      t.integer  :doctor_id
      t.datetime :appointment_datetime
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.timestamps null: false
    end
  end
end
