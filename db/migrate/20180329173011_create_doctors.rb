class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
