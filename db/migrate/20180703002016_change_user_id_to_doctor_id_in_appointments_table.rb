class ChangeUserIdToDoctorIdInAppointmentsTable < ActiveRecord::Migration
  def change
    rename_column :appointments, :user_id, :doctor_id 
  end
end
