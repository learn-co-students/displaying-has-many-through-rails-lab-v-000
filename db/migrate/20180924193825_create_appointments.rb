class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :appointment_datetime
      t.belongs_to :paitent
      t.belongs_to :doctor

      t.timestamps null: false
    end
  end
end
