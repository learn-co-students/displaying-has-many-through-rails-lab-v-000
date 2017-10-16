class RemoveAppointmentidFromPatient < ActiveRecord::Migration
  def change
    remove_column :patients, :appointment_id
  end
end
