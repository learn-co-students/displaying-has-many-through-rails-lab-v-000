class AddDatetimeToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :datetime, :datetime
  end
end
