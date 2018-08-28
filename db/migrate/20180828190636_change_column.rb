class ChangeColumn < ActiveRecord::Migration
  def change
    remove_column :appointments, :appointment, :datetime
    add_column :appointments, :appointment_datetime, :datetime
  end
end
