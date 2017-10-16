class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :department
      t.references :appointment, foreign_key: true
      t.timestamps null: false
    end
  end
end
