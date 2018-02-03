class RemoveDateTimeFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :DateTime
  end
end
