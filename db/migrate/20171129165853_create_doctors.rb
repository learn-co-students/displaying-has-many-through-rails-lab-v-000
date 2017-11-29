class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :department
      t.belongs_to :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
