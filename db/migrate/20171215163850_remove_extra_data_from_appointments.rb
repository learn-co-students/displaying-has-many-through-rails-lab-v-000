class RemoveExtraDataFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :doctor, :string
    remove_column :appointments, :doctor, :string
  end
end
