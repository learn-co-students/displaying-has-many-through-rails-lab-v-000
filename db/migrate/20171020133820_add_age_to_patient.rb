class AddAgeToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :age, :string
  end
end
