class CreateFeaturedArtist < ActiveRecord::Migration
  def change
    create_table :featured_artists do |t|
      t.string :name,null: false
      t.string :category,default: 'singer', null: false
      t.string :picture, null: false
      t.timestamps null: false
    end
  end
end
