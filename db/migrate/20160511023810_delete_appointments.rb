class DeleteAppointments < ActiveRecord::Migration
  def change
		drop_table :appointments
  end
end
