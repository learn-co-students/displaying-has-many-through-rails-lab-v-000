class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.text :name
      t.integer :age
      t.timestamps null: false
    end
  end
end
