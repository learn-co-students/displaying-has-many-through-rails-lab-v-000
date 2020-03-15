class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.belongs_to :user, foreign_key: true
      t.belongs_to :doctor, foreign_key: true
    end
  end
end
