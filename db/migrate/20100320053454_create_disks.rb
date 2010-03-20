class CreateDisks < ActiveRecord::Migration
  def self.up
    create_table :disks do |t|
      t.string :image
      t.string :name
      t.boolean :is_movie
      t.integer :season
      t.integer :first_episode
      t.integer :first_title

      t.timestamps
    end
  end

  def self.down
    drop_table :disks
  end
end
