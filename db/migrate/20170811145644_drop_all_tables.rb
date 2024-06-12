class DropAllTables < ActiveRecord::Migration
  def change
    drop_table :doctors
    drop_table :patients
    drop_table :appointments
  end
end
