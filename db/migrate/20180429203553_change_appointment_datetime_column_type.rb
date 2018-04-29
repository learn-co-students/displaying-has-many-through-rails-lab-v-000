class ChangeAppointmentDatetimeColumnType < ActiveRecord::Migration
  def change
  	change_table :appointments do |t|
  		t.change :appointment_datetime, :datetime 
  	end
  end
end
