class CreateOutlets < ActiveRecord::Migration
  def self.up
    create_table :outlets do |t|
      t.string :name
      t.text :location
      t.text :operating_hours
      t.text :contact
      t.string :image_url
      t.text :announcements

      t.timestamps
    end
  end

  def self.down
    drop_table :outlets
  end
end
