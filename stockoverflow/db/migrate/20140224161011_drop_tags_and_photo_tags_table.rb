class DropTagsAndPhotoTagsTable < ActiveRecord::Migration
  def up
    drop_table :photo_tags
    drop_table :tags
  end

  def down
    create_table "photo_tags", :force => true do |t|
    t.integer  "photo_id"
    t.integer  "tag_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    end

    create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    end
  end
end
