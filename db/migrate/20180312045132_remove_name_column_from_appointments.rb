class RemoveNameColumnFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :name
  end
end
