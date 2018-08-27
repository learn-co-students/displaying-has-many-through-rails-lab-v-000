class AddDateToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :date, :string
    add_column :appointments, :time, :string

  end
end
