class RemoveAppointmentidFromDoctor < ActiveRecord::Migration
  def change
    remove_column :doctors, :appointment_id
  end
end
