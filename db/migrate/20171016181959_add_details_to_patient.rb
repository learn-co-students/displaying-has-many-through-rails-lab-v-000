class AddDetailsToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :name, :string
    add_column :patients, :age, :integer
    add_reference :patients, :appointment, index: true, foreign_key: true
  end
end
