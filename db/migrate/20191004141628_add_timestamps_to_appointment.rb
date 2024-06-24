class AddTimestampsToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :created_at, :datetime
    add_column :appointments, :updated_at, :datetime
  end
end
