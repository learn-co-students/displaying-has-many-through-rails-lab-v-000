class AddDatetimeToAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :datetime
    add_column :appointments, :appointment_datetime, :datetime
  end
end
