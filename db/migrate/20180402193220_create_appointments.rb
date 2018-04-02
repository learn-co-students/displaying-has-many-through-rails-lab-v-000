class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.integer :patient_id
      t.string :doctor_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
