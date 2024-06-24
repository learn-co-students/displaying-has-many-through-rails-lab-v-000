class AddAgeColumnToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :age, :intger
  end
end
