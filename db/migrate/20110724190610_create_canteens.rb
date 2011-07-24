class CreateCanteens < ActiveRecord::Migration
  def self.up
    create_table :canteens do |t|
      t.string :name
      t.text :location
      t.integer :no_of_stalls
      t.text :operating_hours
      t.string :image_url
      t.text :announcement

      t.timestamps
    end
  end

  def self.down
    drop_table :canteens
  end
end
