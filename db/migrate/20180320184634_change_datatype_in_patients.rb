class ChangeDatatypeInPatients < ActiveRecord::Migration
  def change
    change_table :patients do |t|
      t.change :age, :integer
    end
  end
end
