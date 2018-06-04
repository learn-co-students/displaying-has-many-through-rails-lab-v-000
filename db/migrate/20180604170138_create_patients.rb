class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.text :name
      t.text :age

      t.timestamps null: false
    end
  end
end
