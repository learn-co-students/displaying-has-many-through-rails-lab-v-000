class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.datetime :appointment_datetime

      t.timestamps null: false
    end
  end
end
