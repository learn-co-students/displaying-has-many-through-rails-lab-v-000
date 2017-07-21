class UpdateAppointmentTable < ActiveRecord::Migration
  def change
    add_foreign_key :appointments, :patient
    add_foreign_key :appointments, :doctor

  end
end
