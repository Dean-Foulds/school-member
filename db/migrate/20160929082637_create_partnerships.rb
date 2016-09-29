class CreatePartnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :partnerships do |t|
      t.references :member, foreign_key: true
      t.references :school, foreign_key: true
    end
  end
end
