class CreateProjectItems < ActiveRecord::Migration
  def change
    drop_table :project_items
    create_table :project_items do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.references :project, index: true

      t.timestamps
    end
  end
end
