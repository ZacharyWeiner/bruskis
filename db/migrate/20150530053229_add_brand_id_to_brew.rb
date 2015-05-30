class AddBrandIdToBrew < ActiveRecord::Migration
  def change
  	add_column :brews, :brand_id, :integer
  end
end
