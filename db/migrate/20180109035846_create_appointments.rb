class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor, index: true, foreign_key: true
      t.belongs_to :patient, index: true, foreign_key: true
      t.datetime :appointment_dateimte

      t.timestamps null: false
    end
  end
end
