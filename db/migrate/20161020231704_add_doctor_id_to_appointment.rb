class AddDoctorIdToAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :doctor_id, :integer
  end
end
