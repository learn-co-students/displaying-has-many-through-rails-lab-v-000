class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :department
      t.integer :appointment_id

      t.timestamps null: false
    end
  end
end
