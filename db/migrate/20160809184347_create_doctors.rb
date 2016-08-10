class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :department
      t.string :appointments

      t.timestamps null: false
    end
  end
end
