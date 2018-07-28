class ChangeDataTypeAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :appointment_datetime
    add_column :appointments, :appointment_datetime, :datetime
  end
end
