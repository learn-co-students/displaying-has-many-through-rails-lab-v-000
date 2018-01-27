class UpdateAppointment < ActiveRecord::Migration
  def change

    add_column :appointments, :patient, :string
    add_column :appointments, :doctor, :string
    
  end
end
