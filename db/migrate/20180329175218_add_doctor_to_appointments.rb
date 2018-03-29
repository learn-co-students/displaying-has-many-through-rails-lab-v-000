class AddDoctorToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :doctor, :string
  end
end
