class AddTableToMember < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :name, :string
    add_column :members, :email, :string
  end
end
