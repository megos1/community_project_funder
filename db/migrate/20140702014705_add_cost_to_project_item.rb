class AddCostToProjectItem < ActiveRecord::Migration
  def change
    add_column :project_items, :cost, :decimal
  end
end
