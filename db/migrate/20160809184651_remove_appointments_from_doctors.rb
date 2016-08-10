class RemoveAppointmentsFromDoctors < ActiveRecord::Migration
  def change
    remove_column :doctors, :appointments, :string
  end
end
