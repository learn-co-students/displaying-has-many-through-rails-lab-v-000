class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :age
      t.string :name
    end
  end
end
