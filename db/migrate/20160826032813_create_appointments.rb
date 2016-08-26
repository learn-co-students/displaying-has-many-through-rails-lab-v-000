class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :appointment_datetime

      t.timestamps null: false
    end
  end
end
