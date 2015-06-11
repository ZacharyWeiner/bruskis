class ChangeTypeToRoastType < ActiveRecord::Migration
  def change
  	rename_column :roasts, :type, :roast_type
  	rename_column :brews, :type, :brew_type
  end
end
