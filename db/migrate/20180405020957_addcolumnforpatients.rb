class Addcolumnforpatients < ActiveRecord::Migration
  def change
    add_column :patients, :age, :integer
    add_column :doctors, :department, :string
  end
end
