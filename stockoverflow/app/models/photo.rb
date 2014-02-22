class Photo < ActiveRecord::Base
  attr_accessible :album_id, :description, :flag, :image, :question, :rating, :title, :answer_ids, :photo_tags_attributes, :tag_ids, :remote_image_url

  mount_uploader :image, ImageUploader

  belongs_to :album
  has_many :answers
  has_many :photo_tags
  has_many :tags, through: :photo_tags
<<<<<<< HEAD
  

  #makes the photo model voteable
  acts_as_voteable
=======
>>>>>>> 0452a8c54bdd86b7f01e1f847d9d61c3a545d00e

end
