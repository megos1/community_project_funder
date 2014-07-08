class ChangeDurationOnProject < ActiveRecord::Migration
  def change
  	change_column :projects, :duration, :datetime
  end
end
