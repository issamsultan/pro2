class Tag < ActiveRecord::Base
  attr_accessible :name, :photo_tags_attributes, :photo_ids

  has_many :photo_tags
  has_many :photos, through: :photo_tags
end
