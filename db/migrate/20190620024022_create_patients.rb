class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      # t.has_many :appointment

      t.timestamps
    end
  end
end
