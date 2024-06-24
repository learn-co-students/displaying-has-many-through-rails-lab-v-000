class AddFulldateToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :full_date, :string
  end
end
