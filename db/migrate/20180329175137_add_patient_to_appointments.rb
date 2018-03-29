class AddPatientToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :patient, :string
  end
end
