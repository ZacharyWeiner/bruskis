class AddRoastIdToBrews < ActiveRecord::Migration
  def change
  	add_column :brews, :roast_id, :integer
  end
end
