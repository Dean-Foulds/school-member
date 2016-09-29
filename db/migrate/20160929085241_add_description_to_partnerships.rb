class AddDescriptionToPartnerships < ActiveRecord::Migration[5.0]
  def change
    add_column :partnerships, :description, :string
  end
end
