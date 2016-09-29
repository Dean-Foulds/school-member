class AddNameToSchool < ActiveRecord::Migration[5.0]
  def change
    add_column :schools, :name, :string
  end
end
