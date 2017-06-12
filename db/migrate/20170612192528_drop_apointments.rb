class DropApointments < ActiveRecord::Migration
  def change
    drop_table :apointments
  end
end
