class RemoveFieldNameFromAppointments < ActiveRecord::Migration[5.0]
  def change
    remove_column :appointments, :doctor, :string
  end
end
