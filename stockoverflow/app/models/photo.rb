class Photo < ActiveRecord::Base
  attr_accessible :album_id, :description, :flag, :image, :question, :rating, :title, :answer_ids, :photo_tags_attributes, :tag_ids, :remote_image_url

  mount_uploader :image, ImageUploader

  belongs_to :album
  has_many :answers
  has_many :photo_tags
  has_many :tags, through: :photo_tags

  

  #makes the photo model voteable
  acts_as_voteable

end
