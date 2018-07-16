class RemoveDatetimeFromAppointment < ActiveRecord::Migration
  def change
    remove_column :appointments, :datetime, :string
  end
end
