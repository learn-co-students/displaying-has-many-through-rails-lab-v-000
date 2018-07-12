class RemoveParientFromAppointments < ActiveRecord::Migration
  def change
    remove_reference :appointments, :parient, index: true, foreign_key: true
  end
end
