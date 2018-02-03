class RemoveDateFromAppt < ActiveRecord::Migration
  def change
    remove_column :appointments, :datetime
  end
end
