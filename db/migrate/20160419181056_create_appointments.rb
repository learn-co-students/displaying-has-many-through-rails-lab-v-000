class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.belongs_to :doctor, index: true, foreign_key: true
      t.belongs_to :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
