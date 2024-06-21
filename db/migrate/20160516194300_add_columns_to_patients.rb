class AddColumnsToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :name, :string
    add_column :patients, :age, :integer
  end
end
