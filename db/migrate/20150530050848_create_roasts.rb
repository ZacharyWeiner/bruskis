class CreateRoasts < ActiveRecord::Migration
  def change
    create_table :roasts do |t|
      t.string :name
      t.string :roast_type
      t.string :description
      t.string :picture
      t.references :brand, index: true
      t.timestamps
    end
  end
end
