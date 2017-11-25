class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.belongs_to :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
