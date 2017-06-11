class RenameAppointements < ActiveRecord::Migration
  def change
  	rename_table :appointements, :appointments
  end
end
