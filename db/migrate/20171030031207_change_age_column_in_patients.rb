class ChangeAgeColumnInPatients < ActiveRecord::Migration
  def change
    change_column :patients, :age, :integer
  end
end
