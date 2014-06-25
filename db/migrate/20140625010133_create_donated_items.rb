class CreateDonatedItems < ActiveRecord::Migration
  def change
    create_table :donated_items do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.references :projects

      t.timestamps
    end
  end
end
