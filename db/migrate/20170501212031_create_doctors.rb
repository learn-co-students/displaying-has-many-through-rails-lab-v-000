class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :department
      t.string :name

      t.timestamps null: false
    end
  end
end
