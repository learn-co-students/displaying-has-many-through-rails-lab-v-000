class AddAgeToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :age, :integer
  end
end
