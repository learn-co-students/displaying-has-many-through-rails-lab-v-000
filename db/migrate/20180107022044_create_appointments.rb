class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.references :doctor
      t.references :patient

      t.timestamps null: false
    end
  end
end
