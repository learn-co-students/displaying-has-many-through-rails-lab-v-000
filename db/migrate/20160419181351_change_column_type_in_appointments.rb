class ChangeColumnTypeInAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :date, :date
    remove_column :appointments, :time, :time
    add_column :appointments, :appointment_datetime, :datetime 
  end
end
