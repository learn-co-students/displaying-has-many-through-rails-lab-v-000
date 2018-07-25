class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.strftime('%c') :appointment_datetime
      t.timestamps null: false
    end
  end
end
