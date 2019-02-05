class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :patient, index: true, foreign_key: true
      t.references :doctor, index: true, foreign_key: true
      t.datetime :appointment_datetime

      t.timestamps null: false
    end
  end
end
