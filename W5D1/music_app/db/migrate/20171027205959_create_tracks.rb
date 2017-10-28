class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.integer :album_id, null: false
      t.integer :band_id, null: false
      t.string :title, null: false
      t.integer :ord, null: false
      t.text :lyrics
      t.boolean :bonus, default: false

      t.timestamps
    end
    add_index :tracks, :album_id
    add_index :tracks, :band_id
  end
end
