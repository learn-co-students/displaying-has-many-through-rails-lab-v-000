class RemoveAppointmentDateTimeFromDoctors < ActiveRecord::Migration
  def change
    remove_column :doctors, :appointment_date_time, :date
  end
end
