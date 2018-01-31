class ChangeAgeToIntegerInPatient < ActiveRecord::Migration
  def up
    change_column :patients, :age, :integer
  end

  def down
    change_column :patients, :age, :string
  end
end
