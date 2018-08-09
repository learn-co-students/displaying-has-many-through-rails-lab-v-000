class AddTimeStampToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments,:appointment_datetime, :string
  end
end
