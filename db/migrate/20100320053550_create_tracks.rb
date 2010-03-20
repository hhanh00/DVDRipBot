class CreateTracks < ActiveRecord::Migration
  def self.up
    create_table :tracks do |t|
      t.integer :track_index
      t.string :name
      t.references :disk

      t.timestamps
    end
    
    execute 'ALTER TABLE tracks ADD CONSTRAINT FK_tracks_disk FOREIGN KEY (disk_id) REFERENCES disks(id)'
  end

  def self.down
    drop_table :tracks
  end
end
