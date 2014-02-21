class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.integer :user_id
      t.integer :vote
      t.integer :photo_id
      t.integer :flag

      t.timestamps
    end
  end
end
