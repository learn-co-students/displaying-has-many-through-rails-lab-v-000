class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment

      t.timestamps null: false
    end
  end
end
