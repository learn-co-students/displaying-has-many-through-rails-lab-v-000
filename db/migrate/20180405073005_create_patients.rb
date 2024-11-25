class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :age
      t.timestamps null: false
    end
  end
end
