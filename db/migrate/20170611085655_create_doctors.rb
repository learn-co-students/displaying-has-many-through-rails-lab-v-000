class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.date :appointment_date_time
      t.text :description
    end
  end
end
