class AddColumnToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :department, :string
  end
end
