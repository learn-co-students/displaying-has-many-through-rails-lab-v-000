class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :datetime
      t.belongs_to :patient
      t.belongs_to :doctor

      t.timestamps null: false
    end
  end
end
