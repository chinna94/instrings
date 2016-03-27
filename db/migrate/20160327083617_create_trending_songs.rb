class CreateTrendingSongs < ActiveRecord::Migration
  def change
    create_table :trending_songs do |t|
      t.string :name, null: false
      t.string :type, default: 'general'
      t.integer :user_id, null: false
      t.integer :like_count, default: 0
      t.string :audio_url, null:false
      t.string :image_url, default: 'default_song.jpg'

      t.timestamps null: false
    end
  end
end
