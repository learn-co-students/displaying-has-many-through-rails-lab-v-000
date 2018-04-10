class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :department
      t.string :name
    end
  end
end
