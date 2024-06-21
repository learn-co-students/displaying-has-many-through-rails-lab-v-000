class ChangeColumnInAppointments < ActiveRecord::Migration
  def change
      change_table :appointments do |t|
        t.rename :appointment_date, :appointment_datetime
      end
  end
end
