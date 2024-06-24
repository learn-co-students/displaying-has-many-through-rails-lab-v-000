class RemoveAgeFromPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :age, :string
  end
end
