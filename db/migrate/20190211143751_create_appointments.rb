class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.string :doctor_id
      t.string :integer
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
