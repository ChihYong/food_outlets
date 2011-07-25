class CreateStalls < ActiveRecord::Migration
  def self.up
    create_table :stalls do |t|
      t.string :name
      t.text :location
      t.string :category
      t.string :food_type
      t.text :operating_hours
      t.text :price_range
      t.string :image_url
      t.text :announcement
      t.references :canteen

      t.timestamps
    end
  end

  def self.down
    drop_table :stalls
  end
end
