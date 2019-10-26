class DropAppointmentsTable < ActiveRecord::Migration
  def change
     drop_table :appointments
  end
end
