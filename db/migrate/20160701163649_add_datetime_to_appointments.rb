class AddDatetimeToAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :date
    add_column :appointments, :appointment_datetime, :datetime
  end
end
