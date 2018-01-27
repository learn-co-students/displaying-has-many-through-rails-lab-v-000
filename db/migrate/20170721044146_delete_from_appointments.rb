class DeleteFromAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments,:doctor
    remove_column :appointments,:patient
  end
end
