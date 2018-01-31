class RemoveDescriptionFromDoctors < ActiveRecord::Migration
  def change
    remove_column :doctors, :description, :text
  end
end
