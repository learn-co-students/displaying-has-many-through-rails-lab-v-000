class AddColumnsToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :doctors, :belongs_to
    add_column :appointments, :patients, :belongs_to
  end
end
