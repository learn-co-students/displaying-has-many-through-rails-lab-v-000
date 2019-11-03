class AddDoctorIdToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :doctor_id, :integer
  end
end
