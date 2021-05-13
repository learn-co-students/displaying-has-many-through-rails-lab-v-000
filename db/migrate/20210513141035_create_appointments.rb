class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.string :patient_id
      t.string :doctor_id

      t.timestamps
    end
  end
end
