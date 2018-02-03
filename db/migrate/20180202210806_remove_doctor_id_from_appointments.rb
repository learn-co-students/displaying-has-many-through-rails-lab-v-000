class RemoveDoctorIdFromAppointments < ActiveRecord::Migration
  def change

    remove_column :appointments, :DoctorId_id
    remove_column :appointments, :PatientId_id
  end
end
