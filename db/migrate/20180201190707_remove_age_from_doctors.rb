class RemoveAgeFromDoctors < ActiveRecord::Migration
  def change
    remove_column :doctors, :age, :integer
  end
end
