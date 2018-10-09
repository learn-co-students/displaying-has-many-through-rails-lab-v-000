class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :appointment_datetime
      t.string :datetime

      t.timestamps null: false
    end
  end
end
