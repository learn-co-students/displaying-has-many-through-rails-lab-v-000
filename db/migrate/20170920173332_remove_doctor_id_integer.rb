class RemoveDoctorIdInteger < ActiveRecord::Migration
  def change
  	remove_column :appointments, :doctor_id_integer, :string
  end
end
