class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.string :title
      t.text :description
      t.integer :rating
      t.integer :flag
      t.text :question
      t.integer :album_id

      t.timestamps
    end
  end
end
