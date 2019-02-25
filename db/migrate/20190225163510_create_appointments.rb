class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :date_time
      t.belongs_to :doctor
      t.belongs_to :patient
      t.timestamps null: false
    end
  end
end
