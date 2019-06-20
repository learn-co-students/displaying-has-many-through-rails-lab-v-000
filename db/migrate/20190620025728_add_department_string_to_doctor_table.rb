class AddDepartmentStringToDoctorTable < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :department, :string
  end
end
