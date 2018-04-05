# Illustration available here: https://i.imgur.com/YIUhixA.png
class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :department

      t.timestamps null: false
    end
  end
end
