class CreatePatients < ActiveRecord::Migration
  def change
  	drop_table :patients
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :doctor
    end
  end
end
