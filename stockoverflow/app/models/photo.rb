class Photo < ActiveRecord::Base
  attr_accessible :album_id, :description, :flag, :image, :question, :rating, :title, :answer_ids, :remote_image_url, 

  mount_uploader :image, ImageUploader

  belongs_to :album
  has_many :answers
  

  #makes the photo model voteable
  acts_as_voteable

end
