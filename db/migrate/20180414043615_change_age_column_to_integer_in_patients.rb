class ChangeAgeColumnToIntegerInPatients < ActiveRecord::Migration
  def change
    change_column :patients, :age, :integer
  end
end
