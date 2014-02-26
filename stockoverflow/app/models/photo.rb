class Photo < ActiveRecord::Base
  attr_accessible :album_id, :description, :flag, :image, :question, :rating, :title, :answer_ids, :remote_image_url, :tag_list, :user_id

  mount_uploader :image, ImageUploader

  belongs_to :album
  has_many :answers
  belongs_to :user

  validates :description, :length => { :maximum => 500 }
  validates :image, presence: true
  validates :title, presence: true
  validates :question, presence: true



  #makes the photo model voteable
  acts_as_voteable

  #makes the photo model taggable
  acts_as_taggable

  

end
