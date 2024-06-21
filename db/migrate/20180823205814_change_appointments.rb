class ChangeAppointments < ActiveRecord::Migration
  def change 
    change_table :appointments do |t|
      t.remove :appontment_datetime
      t.datetime :appointment_datetime
    end
  end
end
