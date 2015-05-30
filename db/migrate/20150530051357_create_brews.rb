class CreateBrews < ActiveRecord::Migration
  def change
    create_table :brews do |t|
      t.string :brew_type
      t.integer :grams_coffee
      t.integer :ounces_water
      t.integer :duration
      t.string :duration_type
      t.references :roasts, index: true
      t.string :description
      t.integer :rating

      t.timestamps
    end
  end
end
