class FixDateTimeName < ActiveRecord::Migration
  def change
    rename_column :appointments, :date_time, :appointment_datetime
  end
end
