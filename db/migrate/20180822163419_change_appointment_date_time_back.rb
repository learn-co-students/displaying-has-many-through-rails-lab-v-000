class ChangeAppointmentDateTimeBack < ActiveRecord::Migration
  def change
      change_column :appointments, :appointment_datetime, :string
    end

end
