class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :quantity
      t.references :user, index: true
      t.references :project_item, index: true

      t.timestamps
    end
  end
end
